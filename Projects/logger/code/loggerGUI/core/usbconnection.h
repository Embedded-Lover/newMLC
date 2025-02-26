#ifndef USBCONNECTION_H
#define USBCONNECTION_H
#include <QObject>
#include <QIODevice>
#include <QSerialPort>
#include <QSerialPortInfo>

typedef struct
{
    uint8_t strat;
    uint8_t address;
    uint8_t cmd;
    uint8_t dataLength;
    uint8_t headerChecksum;
    QByteArray data;
    uint8_t crc;
    uint8_t end;
}packet_t;


class USBConnection : public QObject
{
private:

    Q_OBJECT
    QSerialPortInfo usbInfo;
    QSerialPort usbPort;
    QByteArray usbRceivedData;
    QByteArray usbSendData;
    packet_t receivedPacket = {};

    void makeRecivedPacket();
    void usbSetting();

    typedef enum
    {
        Idle = 0,
        Start,
        Address,
        CMD,
        LENGTH,
        HEADER_CHECKSUM,
        Data,
        CRC,
        End
    }transmitStatus_t;

public:
    explicit USBConnection(QObject *parent = nullptr);

signals:
    void packetReady(packet_t receivedPacket);

public slots:
    void receivedDataUSB();
};




#endif // USBCONNECTION_H
