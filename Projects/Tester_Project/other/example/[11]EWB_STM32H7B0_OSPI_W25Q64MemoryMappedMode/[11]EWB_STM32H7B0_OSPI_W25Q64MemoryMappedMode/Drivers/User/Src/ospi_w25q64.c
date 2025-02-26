/****
	***************************************************** ***************************************************** ***************************************************** *******************************
	* @file ospi_w25q64.c
	* @version V1.0
	* @date 2021-8-4
	* @author anti-customer technology
	* @brief OSPI driver W25Qxx related functions, the read and write functions provided are directly operated by HAL library functions
   ***************************************************** ***************************************************** ***************************************************** *******************************
   * @description
	*
>>>>> File description:
	*
	* 1. The routine refers to the driver of the official evaluation board STM32H7B3I_EVAL board (MB1331)
	* 2. The routine uses OSPI1
	* 3. The read and write functions provided are all directly operated by the HAL library function, and DMA and interrupt are not used
	* 4. The default configuration OSPI driver clock is divided by 2 of the core clock
	*
>>>>> Important note:
	*
	* 1. The erasing time of W25QXX is limited!!! The typical reference values ??given in the manual are: 4K-45ms, 32K-120ms, 64K-150ms, full chip erasing 20S
	*
	* 2. The writing time of W25QXX is limited!!! The typical reference value given in the manual is: 256 bytes-0.4ms, which is 1M bytes/s (the actual measurement is about 600K bytes/s)
	*
	* 3. If the library function is used to read directly, whether to use DMA, whether to enable Cache, the optimization level of the compiler, and the location of the data storage area (internal TCM SRAM or AXI SRAM) will all affect the reading speed
	*
	* 4. If the memory mapping mode is used, the read performance is only related to the OSPI drive clock and whether to enable Cache
	*
	* 5. In actual use, when the data is relatively large, it is recommended to use 64K or 32K to erase, and the erase time is shorter than that of 4K erase block	
	*
	***************************************************** ***************************************************** ***************************************************** ****************************************
***/

#include "ospi_w25q64.h"


OSPI_HandleTypeDef hospi1;


/**************************************************** ***************************************************
* Function name: HAL_OSPI_MspInit
* Entry parameter: hospi - the variable defined by OSPI_HandleTypeDef, which means the defined OSPI handle
* Return value: None
* Function function: OSPI pin initialization function
* Note: This function will be called by the MX_OCTOSPI1_Init function	
***************************************************** ***************************************************/

void HAL_OSPI_MspInit(OSPI_HandleTypeDef* hospi)
{
   GPIO_InitTypeDef GPIO_InitStruct = {0};

   if(hospi->Instance==OCTOSPI1)
   {
      __HAL_RCC_OCTOSPIM_CLK_ENABLE(); // Enable OSPI pin assignment manager clock
      __HAL_RCC_OSPI1_CLK_ENABLE(); // Enable OSPI1 clock

      GPIO_OSPI_P1_CLK_ENABLE; // Enable OSPI_P1_CLK IO port clock
      GPIO_OSPI_P1_NCS_ENABLE; // Enable OSPI_P1_NCS IO port clock
      GPIO_OSPI_P1_IO0_ENABLE; // Enable OSPI_P1_IO0 IO port clock
      GPIO_OSPI_P1_IO1_ENABLE; // Enable OSPI_P1_IO1 IO port clock
      GPIO_OSPI_P1_IO2_ENABLE; // Enable OSPI_P1_IO2 IO port clock
      GPIO_OSPI_P1_IO3_ENABLE; // Enable OSPI_P1_IO3 IO port clock

      /****Pin definition****************************************** **
      PB2 ------> OCTOSPIM_P1_CLK
      PB6 ------> OCTOSPIM_P1_NCS      
      PD11 ------> OCTOSPIM_P1_IO0
      PD12 ------> OCTOSPIM_P1_IO1
      PE2 ------> OCTOSPIM_P1_IO2     
      PD13 ------> OCTOSPIM_P1_IO3
      ***************************************************** *****/

      GPIO_InitStruct.Mode = GPIO_MODE_AF_PP; // multiplex push-pull output mode
      GPIO_InitStruct.Pull = GPIO_NOPULL; // No pull-up and pull-down   
      GPIO_InitStruct.Speed ??= GPIO_SPEED_FREQ_VERY_HIGH; // super high speed IO port speed

      GPIO_InitStruct.Pin = OSPI_P1_CLK_PIN; // OSPI_P1_CLK pin
      GPIO_InitStruct.Alternate = OSPI_P1_CLK_AF; // OSPI_P1_CLK multiplexing
      HAL_GPIO_Init(OSPI_P1_CLK_PORT, &GPIO_InitStruct); // Initialize OSPI_P1_CLK pin

      GPIO_InitStruct.Pin = OSPI_P1_NCS_PIN; // OSPI_P1_NCS pin
      GPIO_InitStruct.Alternate = OSPI_P1_NCS_AF; // OSPI_P1_NCS multiplexing
      HAL_GPIO_Init(OSPI_P1_NCS_PORT, &GPIO_InitStruct); // Initialize OSPI_P1_NCS pin

      GPIO_InitStruct.Pin = OSPI_P1_IO0_PIN; // OSPI_P1_IO0 pin
      GPIO_InitStruct.Alternate = OSPI_P1_IO0_AF; // OSPI_P1_IO0 multiplexing
      HAL_GPIO_Init(OSPI_P1_IO0_PORT, &GPIO_InitStruct); // Initialize OSPI_P1_IO0 pin	

      GPIO_InitStruct.Pin = OSPI_P1_IO1_PIN; // OSPI_P1_IO1 pin
      GPIO_InitStruct.Alternate = OSPI_P1_IO1_AF; // OSPI_P1_IO1 multiplexing
      HAL_GPIO_Init(OSPI_P1_IO1_PORT, &GPIO_InitStruct); // Initialize OSPI_P1_IO1 pin

      GPIO_InitStruct.Pin = OSPI_P1_IO2_PIN; // OSPI_P1_IO2 pin
      GPIO_InitStruct.Alternate = OSPI_P1_IO2_AF; // OSPI_P1_IO2 multiplexing
      HAL_GPIO_Init(OSPI_P1_IO2_PORT, &GPIO_InitStruct); // Initialize OSPI_P1_IO2 pin			

      GPIO_InitStruct.Pin = OSPI_P1_IO3_PIN; // OSPI_P1_IO3 pin
      GPIO_InitStruct.Alternate = OSPI_P1_IO3_AF; // OSPI_P1_IO3 multiplexing
      HAL_GPIO_Init(OSPI_P1_IO3_PORT, &GPIO_InitStruct); // Initialize OSPI_P1_IO3 pin
   }
}


/**************************************************** ***************************************************
* Function name: MX_OCTOSPI1_Init
* Entry parameters: None
* Return value: None
* Function: Initialize OSPI configuration
* Description: None	
***************************************************** ***************************************************/

void MX_OCTOSPI1_Init(void)
{
	OSPIM_CfgTypeDef sOspiManagerCfg = {0};

   HAL_OSPI_DeInit(&hospi1); // Reset OSPI

	hospi1.Instance = OCTOSPI1; // OSPI peripheral

	hospi1.Init.ClockPrescaler = 2; // Clock frequency division value, divide the OSPI core clock by 2 to obtain the OSPI communication drive clock
	hospi1.Init.FifoThreshold = 8; // FIFO threshold
	hospi1.Init.DualQuad = HAL_OSPI_DUALQUAD_DISABLE; // Disable dual OSPI mode
	hospi1.Init.MemoryType = HAL_OSPI_MEMTYPE_MICRON; // Memory mode, only used in 8-wire mode
	hospi1.Init.DeviceSize = 23; // flash size, the core board uses W25Q64 with 8M bytes, here it is set to 23, that is, 2^23					         
	hospi1.Init.ChipSelectHighTime = 1; // The time for chip select to remain high
	hospi1.Init.FreeRunningClock = HAL_OSPI_FREERUNCLK_DISABLE; // Disable free running clock mode
	hospi1.Init.ClockMode = HAL_OSPI_CLOCK_MODE_3; // mode 3
	hospi1.Init.WrapSize = HAL_OSPI_WRAP_NOT_SUPPORTED; // do not use wrap-size
	hospi1.Init.SampleShifting = HAL_OSPI_SAMPLE_SHIFTING_HALFCYCLE; // Sampling after half a CLK cycle
	hospi1.Init.DelayHoldQuarterCycle = HAL_OSPI_DHQC_DISABLE; // Do not use the data hold function
	hospi1.Init.ChipSelectBoundary = 0; // disable chip select boundary function
	hospi1.Init.ClkChipSelectHighTime = 0; // Set CS to high for 0 CLK cycles after communication ends
	hospi1.Init.DelayBlockBypass = HAL_OSPI_DELAY_BLOCK_BYPASSED; // delay block bypass
   hospi1.Init.MaxTran = 0; // disable communication management function
   hospi1.Init.Refresh = 0; // disable refresh function

	HAL_OSPI_Init(&hospi1); // Initialize OSPI1 settings

	sOspiManagerCfg.ClkPort = 1; // OSPI pin allocation manager settings, use Port1's CLK
	sOspiManagerCfg.NCSPort = 1; // OSPI pin allocation manager settings, use NCS of Port1
	sOspiManagerCfg.IOLowPort = HAL_OSPIM_IOPORT_1_LOW; // OSPI pin allocation manager settings, using the lower 4-bit pins of Port1, IO[3:0]

	HAL_OSPIM_Config(&hospi1, &sOspiManagerCfg, HAL_OSPI_TIMEOUT_DEFAULT_VALUE); // Initialize OSPI pin assignment manager settings
}

/**************************************************** ***************************************************
* Function name: OSPI_W25Qxx_Init
* Entry parameters: None
* Return value: OSPI_W25Qxx_OK - initialization successful, W25Qxx_ERROR_INIT - initialization error
* Function: Initialize OSPI configuration, read W25Q64ID
* Description: None	
***************************************************** ***************************************************/

int8_t OSPI_W25Qxx_Init(void)
{
	uint32_t Device_ID; // Device ID
	
	MX_OCTOSPI1_Init(); // Initialize OSPI configuration

	Device_ID = OSPI_W25Qxx_ReadID(); // read device ID
	
	if( Device_ID == W25Qxx_FLASH_ID ) // match
	{
		printf ("W25Q64 OK,flash ID:%X\r\n",Device_ID); // initialization is successful
		return OSPI_W25Qxx_OK; // return success flag		
	}
	else
	{
		printf ("W25Q64 ERROR!!!!! ID:%X\r\n",Device_ID); // initialization failed	
		return W25Qxx_ERROR_INIT; // return error flag
	}	
}

/**************************************************** ***************************************************
* Function name: OSPI_W25Qxx_AutoPollingMemReady
* Entry parameters: None
* Return value: OSPI_W25Qxx_OK - communication ended normally, W25Qxx_ERROR_AUTOPOLLING - polling waiting for no response
* Function function: Use the automatic polling flag to query, wait for the end of the communication
* Note: This function should be called for each communication, waiting for the end of the communication to avoid wrong operation	
***************************************************** *******************************************FANKE*****/

int8_t OSPI_W25Qxx_AutoPollingMemReady(void)
{
	OSPI_RegularCmdTypeDef sCommand; // OSPI transport configuration
	OSPI_AutoPollingTypeDef sConfig; // Poll comparison related configuration parameters

	sCommand.OperationType = HAL_OSPI_OPTYPE_COMMON_CFG; // general configuration
	sCommand.FlashId = HAL_OSPI_FLASH_ID_1; // flash ID
	sCommand.InstructionMode = HAL_OSPI_INSTRUCTION_1_LINE; // 1-line instruction mode
	sCommand.InstructionSize = HAL_OSPI_INSTRUCTION_8_BITS; // instruction length 8 bits
	sCommand.InstructionDtrMode = HAL_OSPI_INSTRUCTION_DTR_DISABLE; // disable instruction DTR mode
	sCommand.Address = 0x0; // address 0
	sCommand.AddressMode = HAL_OSPI_ADDRESS_NONE; // no address mode
	sCommand.AddressSize = HAL_OSPI_ADDRESS_24_BITS; // Address length 24 bits
	sCommand.AddressDtrMode = HAL_OSPI_ADDRESS_DTR_DISABLE; // disable address DTR mode
	sCommand.AlternateBytesMode = HAL_OSPI_ALTERNATE_BYTES_NONE; // no alternate bytes
	sCommand.DataMode = HAL_OSPI_DATA_1_LINE; // 1-line data mode
	sCommand.DataDtrMode = HAL_OSPI_DATA_DTR_DISABLE; // Disable data DTR mode
	sCommand.NbData = 1; // communication data length
	sCommand.DummyCycles = 0; // number of dummy cycles
	sCommand.DQSMode = HAL_OSPI_DQS_DISABLE; // Do not use DQS
	sCommand.SIOOMode = HAL_OSPI_SIOO_INST_EVERY_CMD; // Send commands every time data is transmitted

	sCommand.Instruction = W25Qxx_CMD_ReadStatus_REG1; // read status information register

	if (HAL_OSPI_Command(&hospi1, &sCommand, HAL_OSPI_TIMEOUT_DEFAULT_VALUE) != HAL_OK)
	{
		return W25Qxx_ERROR_AUTOPOLLING; // Poll waiting for no response
	}

// Constantly query the W25Qxx_CMD_ReadStatus_REG1 register, and compare the W25Qxx_Status_REG1_BUSY in the read status byte with 0
// Read bit 0 of status register 1 (read-only), the Busy flag bit, which will be set to 1 when erasing/writing data/writing commands, and 0 when idle or the end of communication
// FANKE	
	sConfig.Match = 0; // match value	
	sConfig.MatchMode = HAL_OSPI_MATCH_MODE_AND; // AND operation
	sConfig.Interval = 0x10; // polling interval
	sConfig.AutomaticStop = HAL_OSPI_AUTOMATIC_STOP_ENABLE; // Automatic stop mode
	sConfig.Mask = W25Qxx_Status_REG1_BUSY; // Mask the status bytes received in polling mode, and only compare the bits that need to be used

	// Send polling wait command
	if (HAL_OSPI_AutoPolling(&hospi1, &sConfig,HAL_OSPI_TIMEOUT_DEFAULT_VALUE) != HAL_OK)
	{
		return W25Qxx_ERROR_AUTOPOLLING; // Poll waiting for no response
	}
	return OSPI_W25Qxx_OK; // communication ended normally	
}

/**************************************************** ***************************************************
* Function name: OSPI_W25Qxx_ReadID
* Entry parameters: None
* Return value: W25Qxx_ID - read device ID, W25Qxx_ERROR_INIT - communication, initialization error
* Function: Initialize OSPI configuration, read device ID
* Description: None	
***************************************************** ***************************************************/

uint32_t OSPI_W25Qxx_ReadID(void)	
{
	OSPI_RegularCmdTypeDef sCommand; // OSPI transport configuration

	uint8_t OSPI_ReceiveBuff[3]; // Store the data read by OSPI
	uint32_t W25Qxx_ID; // Device ID

	sCommand.OperationType = HAL_OSPI_OPTYPE_COMMON_CFG; // general configuration
	sCommand.FlashId = HAL_OSPI_FLASH_ID_1; // flash ID
	sCommand.InstructionMode = HAL_OSPI_INSTRUCTION_1_LINE; // 1-line instruction mode
	sCommand.InstructionSize = HAL_OSPI_INSTRUCTION_8_BITS; // instruction length 8 bits
	sCommand.InstructionDtrMode = HAL_OSPI_INSTRUCTION_DTR_DISABLE; // disable instruction DTR mode
	sCommand.AddressMode = HAL_OSPI_ADDRESS_NONE; // no address mode
	sCommand.AddressSize = HAL_OSPI_ADDRESS_24_BITS; // Address length 24 bits   
	sCommand.AlternateBytesMode = HAL_OSPI_ALTERNATE_BYTES_NONE; // no alternate bytes
	sCommand.DataMode = HAL_OSPI_DATA_1_LINE; // 1-line data mode
	sCommand.DataDtrMode = HAL_OSPI_DATA_DTR_DISABLE; // Disable data DTR mode
	sCommand.NbData = 3; // Length of transmitted data
	sCommand.DummyCycles = 0; // number of dummy cycles
	sCommand.DQSMode = HAL_OSPI_DQS_DISABLE; // Do not use DQS
	sCommand.SIOOMode = HAL_OSPI_SIOO_INST_EVERY_CMD; // Send commands every time data is transmitted   

	sCommand.Instruction = W25Qxx_CMD_JedecID; // Execute the read device ID command


	HAL_OSPI_Command(&hospi1, &sCommand, HAL_OSPI_TIMEOUT_DEFAULT_VALUE); // send command

	HAL_OSPI_Receive (&hospi1, OSPI_ReceiveBuff, HAL_OSPI_TIMEOUT_DEFAULT_VALUE); // receive data

	W25Qxx_ID = (OSPI_ReceiveBuff[0] << 16) | (OSPI_ReceiveBuff[1] << 8 ) | OSPI_ReceiveBuff[2]; // Combine the obtained data into an ID

	return W25Qxx_ID; // return ID
}


/**************************************************** ***************************************************
* Function name: OSPI_W25Qxx_MemoryMappedMode
* Entry parameters: None
* Return value: OSPI_W25Qxx_OK - write enable is successful, W25Qxx_ERROR_WriteEnable - write enable failed
* Function: Set OSPI to memory mapping mode
* Description: None
***************************************************** ***************************************************/

int8_t OSPI_W25Qxx_MemoryMappedMode(void)
{
   OSPI_RegularCmdTypeDef sCommand; // QSPI transmission configuration
   OSPI_MemoryMappedTypeDef sMemMappedCfg; // memory mapping access parameters

   sCommand.OperationType = HAL_OSPI_OPTYPE_COMMON_CFG; // general configuration
   sCommand.FlashId = HAL_OSPI_FLASH_ID_1; // flash ID

   sCommand.Instruction = W25Qxx_CMD_FastReadQuad_IO; // In 1-4-4 mode (1-line instruction, 4-line address, 4-line data), fast read instruction
   sCommand.InstructionMode = HAL_OSPI_INSTRUCTION_1_LINE; // 1-line instruction mode
   sCommand.InstructionSize = HAL_OSPI_INSTRUCTION_8_BITS; // instruction length 8 bits
   sCommand.InstructionDtrMode = HAL_OSPI_INSTRUCTION_DTR_DISABLE; // disable instruction DTR mode

   sCommand.AddressMode = HAL_OSPI_ADDRESS_4_LINES; // 4-line address mode
   sCommand.AddressSize = HAL_OSPI_ADDRESS_24_BITS; // Address length 24 bits
   sCommand.AddressDtrMode = HAL_OSPI_ADDRESS_DTR_DISABLE; // disable address DTR mode

   sCommand.AlternateBytesMode = HAL_OSPI_ALTERNATE_BYTES_NONE; // no alternate bytes    
   sCommand.AlternateBytesDtrMode = HAL_OSPI_ALTERNATE_BYTES_DTR_DISABLE; // Disable byte DTR mode

   sCommand.DataMode = HAL_OSPI_DATA_4_LINES; // 4-line data mode
   sCommand.DataDtrMode = HAL_OSPI_DATA_DTR_DISABLE; // Disable data DTR mode

   sCommand.DummyCycles = 6; // number of dummy cycles
   sCommand.DQSMode = HAL_OSPI_DQS_DISABLE; // Do not use DQS
   sCommand.SIOOMode = HAL_OSPI_SIOO_INST_EVERY_CMD; // Send commands every time data is transmitted   

 	// write configuration
	if (HAL_OSPI_Command(&hospi1, &sCommand, HAL_OSPI_TIMEOUT_DEFAULT_VALUE) != HAL_OK)
	{
		return W25Qxx_ERROR_TRANSMIT; // transmission data error
	}   

   sMemMappedCfg.TimeOutActivation = HAL_OSPI_TIMEOUT_COUNTER_DISABLE; // disable timeout counter, nCS remains active
   sMemMappedCfg.TimeOutPeriod = 0; // timeout period
   // enable memory-mapped mode
	if (HAL_OSPI_MemoryMapped(&hospi1, &sMemMappedCfg) != HAL_OK) // configure
	{
		return W25Qxx_ERROR_MemoryMapped; // set memory mapping mode error
	}
	return OSPI_W25Qxx_OK; // configured successfully
}

/**************************************************** ***************************************************
* Function name: OSPI_W25Qxx_WriteEnable
* Entry parameters: None
* Return value: OSPI_W25Qxx_OK - write enable is successful, W25Qxx_ERROR_WriteEnable - write enable failed
* Function function: send write enable command
* Description: None	
***************************************************** ***************************************************/

int8_t OSPI_W25Qxx_WriteEnable(void)
{
   OSPI_RegularCmdTypeDef sCommand;// OSPI transport configuration
   OSPI_AutoPollingTypeDef sConfig;// Poll comparison related configuration parameters

   sCommand.OperationType = HAL_OSPI_OPTYPE_COMMON_CFG; // general configuration
   sCommand.FlashId = HAL_OSPI_FLASH_ID_1; // flash ID                       
   sCommand.InstructionMode = HAL_OSPI_INSTRUCTION_1_LINE; // 1-line instruction mode
   sCommand.InstructionSize = HAL_OSPI_INSTRUCTION_8_BITS; // instruction length 8 bits
   sCommand.InstructionDtrMode = HAL_OSPI_INSTRUCTION_DTR_DISABLE; // disable instruction DTR mode
   sCommand.Address = 0; // address 0
   sCommand.AddressMode = HAL_OSPI_ADDRESS_NONE; // no address mode   
   sCommand.AddressSize = HAL_OSPI_ADDRESS_24_BITS; // Address length 24 bits
   sCommand.AddressDtrMode = HAL_OSPI_ADDRESS_DTR_DISABLE; // disable address DTR mode
   sCommand.AlternateBytesDtrMode = HAL_OSPI_ALTERNATE_BYTES_DTR_DISABLE; // Disable byte DTR mode
   sCommand.AlternateBytesMode = HAL_OSPI_ALTERNATE_BYTES_NONE; // no alternate bytes
   sCommand.DataMode = HAL_OSPI_DATA_NONE; // no data mode
   sCommand.DataDtrMode = HAL_OSPI_DATA_DTR_DISABLE; // Disable data DTR mode
   sCommand.DummyCycles = 0; // number of dummy cycles
   sCommand.DQSMode = HAL_OSPI_DQS_DISABLE; // Do not use DQS
   sCommand.SIOOMode = HAL_OSPI_SIOO_INST_EVERY_CMD; // Send commands every time data is transmitted

   sCommand.Instruction = W25Qxx_CMD_WriteEnable; // write enable command

   // Send write enable command
   if (HAL_OSPI_Command(&hospi1, &sCommand, HAL_OSPI_TIMEOUT_DEFAULT_VALUE) != HAL_OK)
   {
      return W25Qxx_ERROR_WriteEnable;	
   }
   // Send query status register command
   sCommand.OperationType = HAL_OSPI_OPTYPE_COMMON_CFG; // general configuration
   sCommand.FlashId = HAL_OSPI_FLASH_ID_1; // flash ID
   sCommand.InstructionMode = HAL_OSPI_INSTRUCTION_1_LINE; // 1-line instruction mode
   sCommand.InstructionSize = HAL_OSPI_INSTRUCTION_8_BITS; // instruction length 8 bits
   sCommand.InstructionDtrMode = HAL_OSPI_INSTRUCTION_DTR_DISABLE; // disable instruction DTR mode
   sCommand.AddressMode = HAL_OSPI_ADDRESS_NONE; // no address mode  
   sCommand.AlternateBytesMode = HAL_OSPI_ALTERNATE_BYTES_NONE; // no alternate bytes   
   sCommand.DummyCycles = 0; // number of dummy cycles
   sCommand.DQSMode = HAL_OSPI_DQS_DISABLE; // Do not use DQS   
   sCommand.SIOOMode = HAL_OSPI_SIOO_INST_EVERY_CMD; // Send commands every time data is transmitted
   sCommand.DataMode = HAL_OSPI_DATA_1_LINE; // 1-line data mode
   sCommand.NbData = 1; // communication data length

   sCommand.Instruction = W25Qxx_CMD_ReadStatus_REG1; // query status register command

   if (HAL_OSPI_Command(&hospi1, &sCommand, HAL_OSPI_TIMEOUT_DEFAULT_VALUE) != HAL_OK)
   {
      return W25Qxx_ERROR_WriteEnable;	
   }

//Continuously query the W25Qxx_CMD_ReadStatus_REG1 register, and constantly compare the W25Qxx_Status_REG1_WEL in the read status byte with 0x02
// Read the first bit of status register 1 (read-only), WEL write enable flag bit, when the flag bit is 1, it means that the write operation can be performed
// FANKE 7B0	
	sConfig.Match = 0x02; // match value	
	sConfig.MatchMode = HAL_OSPI_MATCH_MODE_AND; // AND operation
	sConfig.Interval = 0x10; // polling interval
	sConfig.AutomaticStop = HAL_OSPI_AUTOMATIC_STOP_ENABLE; // Automatic stop mode
	sConfig.Mask = W25Qxx_Status_REG1_WEL; // Mask the status byte received in polling mode, and only compare the bits that need to be used

	if (HAL_OSPI_AutoPolling(&hospi1, &sConfig,HAL_OSPI_TIMEOUT_DEFAULT_VALUE) != HAL_OK)
	{
		return W25Qxx_ERROR_AUTOPOLLING; // Poll waiting for no response
	}
	return OSPI_W25Qxx_OK; // communication ended normally
}

/**************************************************** ***************************************************
*
* Function name: OSPI_W25Qxx_SectorErase
*
* Entry parameter: SectorAddress - the address to be erased
*
* Return value: OSPI_W25Qxx_OK - Erase successful
* W25Qxx_ERROR_Erase - Erase failed
* W25Qxx_ERROR_AUTOPOLLING - Poll waiting for no response
*
* Function function: perform sector erase operation, erase 4K bytes each time
*
* Note: 1. According to the erasure reference time given in the W25Q64JV data sheet, the typical value is 45ms, and the maximum value is 400ms
* 2. The actual erasing speed may be greater than 45ms or less than 45ms
* 3. The longer the flash is used, the longer it will take to erase
*
***************************************************** ***************************************************/

int8_t OSPI_W25Qxx_SectorErase(uint32_t SectorAddress)	
{
	OSPI_RegularCmdTypeDef sCommand; // OSPI transport configuration

	sCommand.OperationType = HAL_OSPI_OPTYPE_COMMON_CFG; // general configuration
	sCommand.FlashId = HAL_OSPI_FLASH_ID_1; // flash ID
	sCommand.InstructionMode = HAL_OSPI_INSTRUCTION_1_LINE; // 1-line instruction mode
	sCommand.InstructionSize = HAL_OSPI_INSTRUCTION_8_BITS; // instruction length 8 bits
	sCommand.InstructionDtrMode = HAL_OSPI_INSTRUCTION_DTR_DISABLE; // disable instruction DTR mode
	sCommand.Address = SectorAddress; // address
	sCommand.AddressMode = HAL_OSPI_ADDRESS_1_LINE; // 1-line address mode
	sCommand.AddressSize = HAL_OSPI_ADDRESS_24_BITS; // Address length 24 bits
	sCommand.AddressDtrMode = HAL_OSPI_ADDRESS_DTR_DISABLE; // disable address DTR mode
	sCommand.AlternateBytesMode = HAL_OSPI_ALTERNATE_BYTES_NONE; // no alternate bytes
	sCommand.DataMode = HAL_OSPI_DATA_NONE; // no data mode
	sCommand.DataDtrMode = HAL_OSPI_DATA_DTR_DISABLE; // Disable data DTR mode
	sCommand.DummyCycles = 0; // number of dummy cycles
	sCommand.DQSMode = HAL_OSPI_DQS_DISABLE; // Do not use DQS
	sCommand.SIOOMode = HAL_OSPI_SIOO_INST_EVERY_CMD; // Send commands every time data is transmitted

	sCommand.Instruction = W25Qxx_CMD_SectorErase; // sector erase instruction, erase 4K bytes each time

	// send write enable
	if (OSPI_W25Qxx_WriteEnable() != OSPI_W25Qxx_OK)
	{
		return W25Qxx_ERROR_WriteEnable; // write enable failed
	}
	// send erase command
	if (HAL_OSPI_Command(&hospi1, &sCommand, HAL_OSPI_TIMEOUT_DEFAULT_VALUE) != HAL_OK)
	{
		return W25Qxx_ERROR_AUTOPOLLING; // Poll waiting for no response
	}   
	//Use the automatic polling flag to wait for the end of the erase
	if (OSPI_W25Qxx_AutoPollingMemReady() != OSPI_W25Qxx_OK)
	{
		return W25Qxx_ERROR_AUTOPOLLING; // Poll waiting for no response
	}
	return OSPI_W25Qxx_OK; // Erase successfully
}

/**************************************************** ***************************************************
*
* Function name: OSPI_W25Qxx_BlockErase_32K
*
* Entry parameter: SectorAddress - the address to be erased
*
* Return value: OSPI_W25Qxx_OK - Erase successful
* W25Qxx_ERROR_Erase - Erase failed
* W25Qxx_ERROR_AUTOPOLLING - Poll waiting for no response
*
* Function function: Perform block erase operation, each erasing 32K bytes
*
* Note: 1. According to the erasure reference time given in the W25Q64JV data sheet, the typical value is 120ms, and the maximum value is 1600ms
* 2. The actual erasing speed may be greater than 120ms or less than 120ms
* 3. The longer the flash is used, the longer it will take to erase
*
***************************************************** ***************************************************/

int8_t OSPI_W25Qxx_BlockErase_32K (uint32_t SectorAddress)	
{
	OSPI_RegularCmdTypeDef sCommand; // OSPI transport configuration

	sCommand.OperationType = HAL_OSPI_OPTYPE_COMMON_CFG; // general configuration
	sCommand.FlashId = HAL_OSPI_FLASH_ID_1; // flash ID
	sCommand.InstructionMode = HAL_OSPI_INSTRUCTION_1_LINE; // 1-line instruction mode
	sCommand.InstructionSize = HAL_OSPI_INSTRUCTION_8_BITS; // instruction length 8 bits
	sCommand.InstructionDtrMode = HAL_OSPI_INSTRUCTION_DTR_DISABLE; // disable instruction DTR mode
	sCommand.Address = SectorAddress; // address
	sCommand.AddressMode = HAL_OSPI_ADDRESS_1_LINE; // 1-line address mode
	sCommand.AddressSize = HAL_OSPI_ADDRESS_24_BITS; // Address length 24 bits
	sCommand.AddressDtrMode = HAL_OSPI_ADDRESS_DTR_DISABLE; // disable address DTR mode
	sCommand.AlternateBytesMode = HAL_OSPI_ALTERNATE_BYTES_NONE; // no alternate bytes
	sCommand.DataMode = HAL_OSPI_DATA_NONE; // no data mode
	sCommand.DataDtrMode = HAL_OSPI_DATA_DTR_DISABLE; // Disable data DTR mode
	sCommand.DummyCycles = 0; // number of dummy cycles
	sCommand.DQSMode = HAL_OSPI_DQS_DISABLE; // Do not use DQS
	sCommand.SIOOMode = HAL_OSPI_SIOO_INST_EVERY_CMD; // Send commands every time data is transmitted

	sCommand.Instruction = W25Qxx_CMD_BlockErase_32K; // block erase instruction, each erase 32K bytes

	// send write enable
	if (OSPI_W25Qxx_WriteEnable() != OSPI_W25Qxx_OK)
	{
		return W25Qxx_ERROR_WriteEnable; // write enable failed
	}
	// send erase command
	if (HAL_OSPI_Command(&hospi1, &sCommand, HAL_OSPI_TIMEOUT_DEFAULT_VALUE) != HAL_OK)
	{
		return W25Qxx_ERROR_AUTOPOLLING; // Poll waiting for no response
	}   
	//Use the automatic polling flag to wait for the end of the erase
	if (OSPI_W25Qxx_AutoPollingMemReady() != OSPI_W25Qxx_OK)
	{
		return W25Qxx_ERROR_AUTOPOLLING; // Poll waiting for no response
	}
	return OSPI_W25Qxx_OK; // Erase successfully	
}

/**************************************************** ***************************************************
*
* Function name: OSPI_W25Qxx_BlockErase_64K
*
* Entry parameter: SectorAddress - the address to be erased
*
* Return value: OSPI_W25Qxx_OK - Erase successful
* W25Qxx_ERROR_Erase - Erase failed
* W25Qxx_ERROR_AUTOPOLLING - Poll waiting for no response
*
* Function: Perform block erase operation, each erasing 64K bytes
*
* Note: 1. According to the erasure reference time given in the W25Q64JV data sheet, the typical value is 150ms, and the maximum value is 2000ms
* 2. The actual erasing speed may be greater than 150ms or less than 150ms
* 3. The longer the flash is used, the longer it will take to erase
* 4. It is recommended to use 64K erasing for actual use, and the erasing time is the fastest
*
***************************************************** ***************************************************/
int8_t OSPI_W25Qxx_BlockErase_64K (uint32_t SectorAddress)	
{
	OSPI_RegularCmdTypeDef sCommand; // OSPI transport configuration

	sCommand.OperationType = HAL_OSPI_OPTYPE_COMMON_CFG; // general configuration
	sCommand.FlashId = HAL_OSPI_FLASH_ID_1; // flash ID
	sCommand.InstructionMode = HAL_OSPI_INSTRUCTION_1_LINE; // 1-line instruction mode
	sCommand.InstructionSize = HAL_OSPI_INSTRUCTION_8_BITS; // instruction length 8 bits
	sCommand.InstructionDtrMode = HAL_OSPI_INSTRUCTION_DTR_DISABLE; // disable instruction DTR mode
	sCommand.Address = SectorAddress; // address
	sCommand.AddressMode = HAL_OSPI_ADDRESS_1_LINE; // 1-line address mode
	sCommand.AddressSize = HAL_OSPI_ADDRESS_24_BITS; // Address length 24 bits
	sCommand.AddressDtrMode = HAL_OSPI_ADDRESS_DTR_DISABLE; // disable address DTR mode
	sCommand.AlternateBytesMode = HAL_OSPI_ALTERNATE_BYTES_NONE; // no alternate bytes
	sCommand.DataMode = HAL_OSPI_DATA_NONE; // no data mode
	sCommand.DataDtrMode = HAL_OSPI_DATA_DTR_DISABLE; // Disable data DTR mode
	sCommand.DummyCycles = 0; // number of dummy cycles
	sCommand.DQSMode = HAL_OSPI_DQS_DISABLE; // Do not use DQS
	sCommand.SIOOMode = HAL_OSPI_SIOO_INST_EVERY_CMD; // Send commands every time data is transmitted

	sCommand.Instruction = W25Qxx_CMD_BlockErase_64K; // sector erase instruction, erase 64K bytes each time

	// send write enable
	if (OSPI_W25Qxx_WriteEnable() != OSPI_W25Qxx_OK)
	{
		return W25Qxx_ERROR_WriteEnable; // write enable failed
	}
	// send erase command
	if (HAL_OSPI_Command(&hospi1, &sCommand, HAL_OSPI_TIMEOUT_DEFAULT_VALUE) != HAL_OK)
	{
		return W25Qxx_ERROR_AUTOPOLLING; // Poll waiting for no response
	}   
	//Use the automatic polling flag to wait for the end of the erase
	if (OSPI_W25Qxx_AutoPollingMemReady() != OSPI_W25Qxx_OK)
	{
		return W25Qxx_ERROR_AUTOPOLLING; // Poll waiting for no response
	}
	return OSPI_W25Qxx_OK; // Erase successfully			
}

/**************************************************** ***************************************************
*
* Function name: OSPI_W25Qxx_ChipErase
*
* Entry parameters: None
*
* Return value: OSPI_W25Qxx_OK - Erase successful
* W25Qxx_ERROR_Erase - Erase failed
* W25Qxx_ERROR_AUTOPOLLING - Poll waiting for no response
*
* Function: Perform full chip erase operation
*
* Note: 1. According to the erasing reference time given in the W25Q64JV data sheet, the typical value is 20s, and the maximum value is 100s
* 2. The actual erasing speed may be greater than 20s or less than 20s
* 3. The longer the flash is used, the longer it will take to erase
*
***************************************************** ***************************************************/
int8_t OSPI_W25Qxx_ChipErase (void)	
{
	OSPI_RegularCmdTypeDef sCommand; // OSPI transport configuration
   OSPI_AutoPollingTypeDef sConfig; // Poll comparison related configuration parameters

	sCommand.OperationType = HAL_OSPI_OPTYPE_COMMON_CFG; // general configuration
	sCommand.FlashId = HAL_OSPI_FLASH_ID_1; // flash ID
	sCommand.InstructionMode = HAL_OSPI_INSTRUCTION_1_LINE; // 1-line instruction mode
	sCommand.InstructionSize = HAL_OSPI_INSTRUCTION_8_BITS; // instruction length 8 bits
	sCommand.InstructionDtrMode = HAL_OSPI_INSTRUCTION_DTR_DISABLE; // disable instruction DTR mode
	sCommand.AddressMode = HAL_OSPI_ADDRESS_NONE; // no address mode
	sCommand.AddressDtrMode = HAL_OSPI_ADDRESS_DTR_DISABLE; // disable address DTR mode   
	sCommand.AlternateBytesMode = HAL_OSPI_ALTERNATE_BYTES_NONE; // no alternate bytes
	sCommand.DataMode = HAL_OSPI_DATA_NONE; // no data mode
	sCommand.DataDtrMode = HAL_OSPI_DATA_DTR_DISABLE; // Disable data DTR mode
	sCommand.DummyCycles = 0; // number of dummy cycles
	sCommand.DQSMode = HAL_OSPI_DQS_DISABLE; // Do not use DQS
	sCommand.SIOOMode = HAL_OSPI_SIOO_INST_EVERY_CMD; // Send commands every time data is transmitted

	sCommand.Instruction = W25Qxx_CMD_ChipErase; // Full chip erase instruction

	// send write enable
	if (OSPI_W25Qxx_WriteEnable() != OSPI_W25Qxx_OK)
	{
		return W25Qxx_ERROR_WriteEnable; // write enable failed
	}
	// send erase command
	if (HAL_OSPI_Command(&hospi1, &sCommand, HAL_OSPI_TIMEOUT_DEFAULT_VALUE) != HAL_OK)
	{
		return W25Qxx_ERROR_AUTOPOLLING; // Poll waiting for no response
	}   

   // Send query status register command
   sCommand.DataMode = HAL_OSPI_DATA_1_LINE; // One-line data mode
   sCommand.NbData = 1; // data length 1
   sCommand.Instruction = W25Qxx_CMD_ReadStatus_REG1; // status register command

   if (HAL_OSPI_Command(&hospi1, &sCommand, HAL_OSPI_TIMEOUT_DEFAULT_VALUE) != HAL_OK)
   {
      return W25Qxx_ERROR_AUTOPOLLING;	
   }

// Constantly query the W25Qxx_CMD_ReadStatus_REG1 register, and compare the W25Qxx_Status_REG1_BUSY in the read status byte with 0
// Read bit 0 of status register 1 (read-only), the Busy flag bit, which will be set to 1 when erasing/writing data/writing commands, and 0 when idle or the end of communication
		
	sConfig.Match = 0; // match value	
	sConfig.MatchMode = HAL_OSPI_MATCH_MODE_AND; // AND operation
	sConfig.Interval = 0x10; // polling interval
	sConfig.AutomaticStop = HAL_OSPI_AUTOMATIC_STOP_ENABLE; // Automatic stop mode
	sConfig.Mask = W25Qxx_Status_REG1_BUSY; // Mask the status bytes received in polling mode, and only compare the bits that need to be used

	// The typical reference time of W25Q64 chip erase is 20s, the maximum time is 100s, and the timeout waiting value here is W25Qxx_ChipErase_TIMEOUT_MAX is 100s
	if (HAL_OSPI_AutoPolling(&hospi1, &sConfig,W25Qxx_ChipErase_TIMEOUT_MAX) != HAL_OK)
	{
		return W25Qxx_ERROR_AUTOPOLLING; // Poll waiting for no response
	}
	return OSPI_W25Qxx_OK; // Erase successfully				
}

/**************************************************** ***************************************************** *****
*
* Function name: OSPI_W25Qxx_WritePage
*
* Entry parameters: pBuffer - the data to be written
* WriteAddr - address to write to W25Qxx
* NumByteToWrite - data length, the maximum can only be 256 bytes
*
* Return value: OSPI_W25Qxx_OK - write data successfully
* W25Qxx_ERROR_WriteEnable - write enable failed
* W25Qxx_ERROR_TRANSMIT - transfer failed
* W25Qxx_ERROR_AUTOPOLLING - Poll waiting for no response
*
* Function function: Write by page, the maximum can only be 256 bytes, please be sure to complete the erase operation before writing data
*
* Note: 1. The writing time of Flash is the same as the erasing time, which is limited. It does not mean that the OSPI drive clock 133M can write at this speed
* 2. According to the page (256 bytes) write reference time given in the W25Q64JV data sheet, the typical value is 0.4ms, and the maximum value is 3ms
* 3. The actual writing speed may be greater than 0.4ms or less than 0.4ms
* 4. The longer the Flash is used, the longer it will take to write
* 5. Before data writing, please be sure to complete the erase operation
*
***************************************************** ***************************************************** *****/
int8_t OSPI_W25Qxx_WritePage(uint8_t* pBuffer, uint32_t WriteAddr, uint16_t NumByteToWrite)
{
   OSPI_RegularCmdTypeDef sCommand;// OSPI transport configuration

   sCommand.OperationType = HAL_OSPI_OPTYPE_COMMON_CFG; // general configuration
   sCommand.FlashId = HAL_OSPI_FLASH_ID_1; // flash ID

   sCommand.Instruction = W25Qxx_CMD_QuadInputPageProgram; // In 1-1-4 mode (1-line instruction, 1-line address, 4-line data), page programming instruction
   sCommand.InstructionMode = HAL_OSPI_INSTRUCTION_1_LINE; // 1-line instruction mode
   sCommand.InstructionSize = HAL_OSPI_INSTRUCTION_8_BITS; // instruction length 8 bits
   sCommand.InstructionDtrMode = HAL_OSPI_INSTRUCTION_DTR_DISABLE; // disable instruction DTR mode

   sCommand.Address = WriteAddr; // address
   sCommand.AddressMode = HAL_OSPI_ADDRESS_1_LINE; // 1-line address mode
   sCommand.AddressSize = HAL_OSPI_ADDRESS_24_BITS; // Address length 24 bits
   sCommand.AddressDtrMode = HAL_OSPI_ADDRESS_DTR_DISABLE; // disable address DTR mode

   sCommand.AlternateBytesMode = HAL_OSPI_ALTERNATE_BYTES_NONE; // no alternate bytes         
   sCommand.AlternateBytesDtrMode = HAL_OSPI_ALTERNATE_BYTES_DTR_DISABLE; // Disable byte DTR mode

   sCommand.DataMode = HAL_OSPI_DATA_4_LINES; // 4-line data mode
   sCommand.DataDtrMode = HAL_OSPI_DATA_DTR_DISABLE; // Disable data DTR mode
   sCommand.NbData = NumByteToWrite; // data length

   sCommand.DummyCycles = 0; // number of dummy cycles
   sCommand.DQSMode = HAL_OSPI_DQS_DISABLE; // Do not use DQS
   sCommand.SIOOMode = HAL_OSPI_SIOO_INST_EVERY_CMD; // Send commands every time data is transmitted   

	// write enable
	if (OSPI_W25Qxx_WriteEnable() != OSPI_W25Qxx_OK)
	{
		return W25Qxx_ERROR_WriteEnable; // write enable failed
	}
 	// write command  
	if (HAL_OSPI_Command(&hospi1, &sCommand, HAL_OSPI_TIMEOUT_DEFAULT_VALUE) != HAL_OK)
	{
		return W25Qxx_ERROR_TRANSMIT; // transmission data error
	}   
	// start transferring data
	if (HAL_OSPI_Transmit(&hospi1, pBuffer, HAL_OSPI_TIMEOUT_DEFAULT_VALUE) != HAL_OK)
	{
		return W25Qxx_ERROR_TRANSMIT; // transmission data error
	}
	// Use the automatic polling flag to wait for the end of the write
	if (OSPI_W25Qxx_AutoPollingMemReady() != OSPI_W25Qxx_OK)
	{
		return W25Qxx_ERROR_AUTOPOLLING; // Poll waiting for no response
	}
	return OSPI_W25Qxx_OK; // write data successfully
}

/**************************************************** ***************************************************** *****
*
* Function name: OSPI_W25Qxx_WriteBuffer
*
* Entry parameters: pBuffer - the data to be written
* WriteAddr - address to write to W25Qxx
* NumByteToWrite - the data length, the maximum cannot exceed the size of the flash chip
*
* Return value: OSPI_W25Qxx_OK - write data successfully
* W25Qxx_ERROR_WriteEnable - write enable failed
* W25Qxx_ERROR_TRANSMIT - transfer failed
* W25Qxx_ERROR_AUTOPOLLING - Poll waiting for no response
*
* Function function: write data, the maximum size of the flash chip cannot be exceeded, please be sure to complete the erase operation
*
* Note: 1. The writing time of Flash is the same as the erasing time, which is limited. It does not mean that the OSPI drive clock 133M can write at this speed
* 2. According to the page write reference time given in the W25Q64JV data sheet, the typical value is 0.4ms, and the maximum value is 3ms
* 3. The actual writing speed may be greater than 0.4ms or less than 0.4ms
* 4. The longer the Flash is used, the longer it will take to write
* 5. Before data writing, please be sure to complete the erase operation
* 6. This function is ported to stm32h743i_eval_qspi.c
*
***************************************************** ***************************************************** *****/

int8_t OSPI_W25Qxx_WriteBuffer(uint8_t* pBuffer, uint32_t WriteAddr, uint32_t Size)
{	
	uint32_t end_addr, current_size, current_addr;
	uint8_t *write_data; // data to be written

	current_size = W25Qxx_PageSize - (WriteAddr % W25Qxx_PageSize); // Calculate the remaining space of the current page

	if (current_size > Size) // Determine whether the remaining space of the current page is enough to write all the data
	{
		current_size = Size; // If enough, get the current size directly
	}

	current_addr = WriteAddr; // get the address to write
	end_addr = WriteAddr + Size; // Calculate the end address
	write_data = pBuffer; // Get the data to be written

	do
	{
		// write data by page
		if(OSPI_W25Qxx_WritePage(write_data, current_addr, current_size) != OSPI_W25Qxx_OK)
		{
			return W25Qxx_ERROR_TRANSMIT;
		}

		else // Write data by page successfully, and prepare for the next data write
		{
			current_addr += current_size; // Calculate the address to be written next time
			write_data += current_size; // Get the address of the data storage area to be written next time
			// Calculate the length of the next write data
			current_size = ((current_addr + W25Qxx_PageSize) > end_addr) ? (end_addr - current_addr) : W25Qxx_PageSize;
		}
	}
	while (current_addr < end_addr) ; // Determine whether all data has been written

	return OSPI_W25Qxx_OK; // write data successfully
}

/**************************************************** ***************************************************** *******************************
*
* Function name: OSPI_W25Qxx_ReadBuffer
*
* Entry parameters: pBuffer - data to be read
* ReadAddr - address to read W25Qxx
* NumByteToRead - the data length, the maximum cannot exceed the size of the flash chip
*
* Return value: OSPI_W25Qxx_OK - read data successfully
* W25Qxx_ERROR_TRANSMIT - transfer failed
* W25Qxx_ERROR_AUTOPOLLING - Poll waiting for no response
*
* Function function: read data, the maximum size cannot exceed the size of the flash chip
*
* Note: 1. The reading speed of Flash depends on the communication clock of OSPI, and the maximum cannot exceed 133M
* 2. Here is the 1-4-4 mode (1-line instruction, 4-line address, 4-line data), fast read instruction Fast Read Quad I/O
* 3. There is a free cycle when using the fast read instruction. For details, refer to the manual of W25Q64JV Fast Read Quad I/O (0xEB) instruction
* 4. In actual use, whether to use DMA, the optimization level of the compiler, and the location of the data storage area (internal TCM SRAM or AXI SRAM) will all affect the reading speed
* FANKE
***************************************************** ***************************************************** *************FANKE************/

int8_t OSPI_W25Qxx_ReadBuffer(uint8_t* pBuffer, uint32_t ReadAddr, uint32_t NumByteToRead)
{
   OSPI_RegularCmdTypeDef sCommand;// OSPI transport configuration

   sCommand.OperationType = HAL_OSPI_OPTYPE_COMMON_CFG; // general configuration
   sCommand.FlashId = HAL_OSPI_FLASH_ID_1; // flash ID

   sCommand.Instruction = W25Qxx_CMD_FastReadQuad_IO; // In 1-4-4 mode (1-line instruction, 4-line address, 4-line data), fast read instruction
   sCommand.InstructionMode = HAL_OSPI_INSTRUCTION_1_LINE; // 1-line instruction mode
   sCommand.InstructionSize = HAL_OSPI_INSTRUCTION_8_BITS; // instruction length 8 bits
   sCommand.InstructionDtrMode = HAL_OSPI_INSTRUCTION_DTR_DISABLE; // disable instruction DTR mode

   sCommand.Address = ReadAddr; // address
   sCommand.AddressMode = HAL_OSPI_ADDRESS_4_LINES; // 4-line address mode
   sCommand.AddressSize = HAL_OSPI_ADDRESS_24_BITS; // Address length 24 bits
   sCommand.AddressDtrMode = HAL_OSPI_ADDRESS_DTR_DISABLE; // disable address DTR mode

   sCommand.AlternateBytesMode = HAL_OSPI_ALTERNATE_BYTES_NONE; // no alternate bytes    
   sCommand.AlternateBytesDtrMode = HAL_OSPI_ALTERNATE_BYTES_DTR_DISABLE; // Disable byte DTR mode

   sCommand.DataMode = HAL_OSPI_DATA_4_LINES; // 4-line data mode
   sCommand.DataDtrMode = HAL_OSPI_DATA_DTR_DISABLE; // Disable data DTR mode
   sCommand.NbData = NumByteToRead; // data length

   sCommand.DummyCycles = 6; // number of dummy cycles
   sCommand.DQSMode = HAL_OSPI_DQS_DISABLE; // Do not use DQS
   sCommand.SIOOMode = HAL_OSPI_SIOO_INST_EVERY_CMD; // Send commands every time data is transmitted   

 	// write command  
	if (HAL_OSPI_Command(&hospi1, &sCommand, HAL_OSPI_TIMEOUT_DEFAULT_VALUE) != HAL_OK)
	{
		return W25Qxx_ERROR_TRANSMIT; // transmission data error
	}   
	// Receive data
	if (HAL_OSPI_Receive(&hospi1, pBuffer, HAL_OSPI_TIMEOUT_DEFAULT_VALUE) != HAL_OK)
	{
		return W25Qxx_ERROR_TRANSMIT; // transmission data error
	}
	// Use the automatic polling flag to wait for the end of the reception  
	if (OSPI_W25Qxx_AutoPollingMemReady() != OSPI_W25Qxx_OK)
	{
		return W25Qxx_ERROR_AUTOPOLLING; // Poll waiting for no response
	}
	return OSPI_W25Qxx_OK; // read data successfully
}


// Experimental platform: anti-customer STM32H7B0VBT6 core board
// FANKE
/**fk core board *********************************************** ***************************************************** ***************************************************** ***************************************************** ****FANKE**********/
