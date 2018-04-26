import QtQuick 2.2
import QtQuick.Window 2.0
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.1

ApplicationWindow {
    id: backlight
    visible: true
    title: qsTr("backlight")
    width: 500
    height: 500
    x: (Screen.width - width) / 2
    y: (Screen.height - height) / 2
    color: "white"

    function windowMode(val){
        if (val > 0.5)
        {
            backlight.flags = Qt.FramelessWindowHint;
            status.color = "green";

        }
        else
        {
            backlight.flags = Qt.WindowStaysOnTopHint;
            status.color = "red"
        }
    }

    function toglePresed(val){
        if (val > 0.5)
        {
            slider.value = 1;
        }
        else
        {
            slider.value = 0;
        }

    }


    property real slideValue
    signal onSlide(real value)

    Rectangle {
        anchors.centerIn: parent
        height: backlight.height/4
        width: backlight.width/2

        color: "transparent"

        Rectangle {
            id: status
            anchors.fill: parent
            height: backlight.height/4
            width: backlight.width/2
            radius: backlight.width/4
            opacity: 0.5
            color: "red"
        }

        Slider {
            id: slider
            anchors.centerIn: parent
            width: backlight.width/2
            height: backlight.height
            focus: true
            onValueChanged: backlight.windowMode(value)
            onPressedChanged: toglePresed(value)
            Keys.onSpacePressed: Qt.quit()
            Keys.onEscapePressed: Qt.quit()

            style: SliderStyle {
                groove: Rectangle {
                    implicitHeight: 8
                    radius: backlight.height/8
                    color: "gray"
                }
                handle: Rectangle {
                    id: changeButton
                    anchors.centerIn: parent
                    color: control.pressed ? "white" : "lightgray"
                    border.color: "gray"
                    border.width: 2
                    width: backlight.width/4
                    height: backlight.height/4
                    radius: backlight.height/8
                }
            }
        }
    }
}
