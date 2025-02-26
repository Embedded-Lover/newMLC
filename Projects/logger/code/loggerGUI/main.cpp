#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QDebug>

#include "core/usbconnection.h"
#include "core/backendcore.h"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    //
    USBConnection usbConnection;
    BackendCore appCore;
    QObject::connect(&usbConnection, SIGNAL(packetReady(packet_t)), &appCore, SLOT(packetReceived(packet_t)));
    //

    QQmlApplicationEngine engine;

    //
    QQmlContext *context = engine.rootContext();
    context->setContextProperty("appCore", &appCore);
    //

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreated,
        &app,
        [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}


//QML connection to backend
//property in qml
//thread
//windows - linux
//more than one qml
//qml resizable
//qml relative position
//for library generation --> namespace
//typedef or using
//enum in classs or in .h
//mobile and desctop


//cmake
//exe
//CRC16 for crc

