#include "core/usbconnection.h"
#include <QDebug>

USBConnection::USBConnection(QObject *parent) : QObject(parent)
{
    usbInfo = QSerialPortInfo::availablePorts()[1];
    qDebug() << "Name  :" << usbInfo.portName();
    qDebug() << "description  :" << usbInfo.description();
    //
    usbPort.setPortName("COM8");
    usbPort.setBaudRate(9600);
    usbPort.setParity(QSerialPort::NoParity);
    usbPort.setStopBits(QSerialPort::OneStop);
    usbPort.setDataBits(QSerialPort::Data8);
    usbPort.setFlowControl(QSerialPort::NoFlowControl);
    //
    usbPort.close();
    if (usbPort.open(QIODevice::ReadWrite) == true)
    {
        qDebug() << "USB Opened Succeddfuly";
    }
    //
    QObject::connect(&usbPort, SIGNAL(readyRead()), this, SLOT(receivedDataUSB()));
}

void USBConnection::usbSetting()
{

}

void USBConnection::receivedDataUSB()
{
    //usbPort.write("ok");
    usbRceivedData = usbPort.readAll();
    makeRecivedPacket();
}

void USBConnection::makeRecivedPacket()
{

    static uint8_t status = Idle;
    uint8_t tempData = usbRceivedData.back();

    if (tempData == '$')
    {
        status = Start;
    }

    switch (status) {
    case Idle:
        break;
    case Start:
        status = Address;
        break;
    case Address:
        receivedPacket.address = tempData;
        status = CMD;
        break;
    case CMD:
        receivedPacket.cmd = tempData;
        status = LENGTH;
        break;
    case LENGTH:
        receivedPacket.dataLength = tempData;
        status = HEADER_CHECKSUM;
        break;
    case HEADER_CHECKSUM:
        receivedPacket.headerChecksum = tempData;
        receivedPacket.data.clear();
        status = Data;
        break;
    case Data:
        receivedPacket.data.append(tempData);
        if (receivedPacket.data.size() == receivedPacket.dataLength)
        {
            status = CRC;
        }
        break;
    case CRC:
        receivedPacket.crc = tempData;
        status = End;
        break;
    case End:
        status = Idle;
        if (tempData == '#') emit packetReady(receivedPacket);
        break;
    default:
        break;
    }
}





