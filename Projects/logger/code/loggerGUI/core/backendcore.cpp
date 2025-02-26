#include "core/backendcore.h"
#include <QDebug>


BackendCore::BackendCore(QObject *parent) : QObject(parent)
{

}


void BackendCore::liveModeGUIChanged()
{
    qDebug() << "live mode has been changed";
}

void BackendCore::deviceMassageProcess()
{  

}

void BackendCore::packetReceived(packet_t receivedPacket)
{
    switch (receivedPacket.address)
    {
    case Log:
    {
        QString logString;
        logString = QString(receivedPacket.data);
        emit logReceived(logString);
        break;
    }
    case LiveMode:
        emit liveModeDeviceApplied();
        break;
    default:
        break;
    }
}
