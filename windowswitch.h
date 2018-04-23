#ifndef WINDOWSWITCH_H
#define WINDOWSWITCH_H

#include <QObject>

class WindowSwitch : public QObject
{
    Q_OBJECT
public:
    explicit WindowSwitch(QObject *parent = 0);

signals:

public slots:
    void windowStatus(qreal value);
};

#endif // WINDOWSWITCH_H
