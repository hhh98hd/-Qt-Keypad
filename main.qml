import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    minimumWidth: 640
    maximumWidth: 640
    height: 480
    maximumHeight: 480
    minimumHeight: 480
    visible: true
    title: qsTr("Phone Keypad")

    Text {
        id: num_text
        anchors.horizontalCenter: keypad.horizontalCenter
        anchors.bottom: keypad.top
        anchors.bottomMargin: 20
        text: qsTr("")
        font.pixelSize: 30
    }

    Keypad {
        id: keypad
        anchors.centerIn: parent

        onKeyPressed: function(key) {
           num_text.text += key;
        }
    }
}
