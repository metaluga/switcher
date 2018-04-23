#include "windowswitch.h"
#include <QDebug>
WindowSwitch::WindowSwitch(QObject *parent) : QObject(parent)
{

}

void WindowSwitch::windowStatus(qreal value)
{
    qDebug() << value;
}
