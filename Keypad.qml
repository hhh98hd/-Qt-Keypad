import QtQuick 2.0

Item {
    id: root
    width: 376
    height: 264

    signal keyPressed(key: string)

    Grid {
        id: grid
        anchors.fill: parent
        rows: 4
        columns: 3
        rowSpacing: 8
        columnSpacing: 8

        Key { keyValue: '1'}
        Key { keyValue: '2' }
        Key { keyValue: '3' }

        Key { keyValue: '4' }
        Key { keyValue: '5' }
        Key { keyValue: '6' }

        Key { keyValue: '7' }
        Key { keyValue: '8' }
        Key { keyValue: '9' }

        Key { keyValue: '*' }
        Key { keyValue: '0' }
        Key { keyValue: '#' }

        function onKeyPressed(key) {
            keyPressed(key);
        }
    }
}
