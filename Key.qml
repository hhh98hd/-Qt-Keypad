import QtQuick 2.0

Item {
    id: root
    width: 120
    height: 60

    property alias keyValue: text.text
    signal keyPressed(key: string)

    Rectangle {
        anchors.fill: parent
        radius: 22
        color: "#abdbe3"

        Text {
            id: text
            anchors.centerIn: parent
            text: qsTr("")
            font.bold: true
            font.pixelSize: 28
        }

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true

            onEntered: {
                parent.color = "#0967a4";
                text.color = "white"
            }

            onExited: {
                parent.color = "#abdbe3";
                text.color = "black"
            }

            onPressed: {
                parent.color = "#e28743";
            }

            onReleased: {
                parent.color = "#0967a4";
            }

            onClicked: {
                root.keyPressed(text.text);
            }
        }
    }

    Component.onCompleted: {
        keyPressed.connect(grid.onKeyPressed);
    }
}
