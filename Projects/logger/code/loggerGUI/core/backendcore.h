#ifndef BACKENDCORE_H
#define BACKENDCORE_H

#include <QObject>

#include <core/usbconnection.h>
#include <QString>

class BackendCore : public QObject
{
    Q_OBJECT

    typedef enum
    {
        Log = 1,
        LiveMode,
    }address_t;

public:
    explicit BackendCore(QObject *parent = nullptr);

signals:

    void liveModeDeviceApplied();
    void logReceived(QString logString);

public slots:
    void liveModeGUIChanged();
    void packetReceived(packet_t receivedPacket);

private:
   void deviceMassageProcess();
};

#endif // BACKENDCORE_H
