#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include <QQmlContext>
#include <QQuickView>
#include "windowswitch.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

  //  WindowSwitch window_switch;
   // QObject *topLevel = engine.rootObjects().value(0);
   // QQuickWindow *window = qobject_cast<QQuickWindow *>(topLevel);

        // connect our QML signal to our C++ slot




    return app.exec();
}
