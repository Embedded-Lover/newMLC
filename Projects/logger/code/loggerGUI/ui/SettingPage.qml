import QtQuick 2.15
import QtQuick.Controls.Basic 2.15


Item{

    Grid {
        anchors.top: parent.top
        id: grid
        spacing: 10
        rows: 2
        columns: 3
        Rectangle{
            width: 150
            height: 200
            color: "lightblue"
            border.color: "black"
            border.width: 2

            Column {
                anchors.fill: parent
                spacing: 1
                Text {text: "Storage Selection"}
                CheckBox {
                    id: internalFlash
                    text: qsTr("Internal Flash")
                    indicator: Rectangle {
                        implicitWidth: 26
                        implicitHeight: 26
                        x: internalFlash.leftPadding
                        y: parent.height / 2 - height / 2
                        radius: 3                    }
                    onCheckedChanged: indicator.color ="blue"
                }
                CheckBox { text: qsTr("USB Stick")}
                CheckBox { text: qsTr("SD Card") }
            }
        }

        Rectangle {
            width: 150
            height: 200
            color: "lightblue"
            border.color: "black"
            border.width: 2
            Text {text: "CAN-BUS Setting"}
        }

        Rectangle {
            width: 150
            height: 200
            color: "lightblue"
            border.color: "black"
            border.width: 2
            Text {text: "RS485 Setting"}
        }

        Rectangle {
            width: 150
            height: 200
            color: "lightblue"
            border.color: "black"
            border.width: 2
            Text {text: "COM-Port Setting"}
        }

        Rectangle {
            width: 150
            height: 200
            color: "lightblue"
            border.color: "black"
            border.width: 2
            Text {text: "Date & Time Setting"}
        }
    }

    Popup {
        id: popup
        anchors.centerIn: Overlay.overlay
        width: 200
        height: 200
        modal: true
        focus: true
        font.pixelSize: 10

        background: Rectangle {
            color: "white"
            border.width: 2
        }

        Text {
            text: "popUp"
        }

        enter: Transition {
            NumberAnimation { property: "opacity"; from: 0.0; to: 1.0 }
        }

        exit: Transition {
            NumberAnimation { property: "opacity"; from: 1.0; to: 0.0 }
        }

        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
    }
}



//Storage Selection -->
//COM-Port Setting --> port(com1..) // buad autoconnect //auto Connections // speed // parity
//CAN-BUS Setting --> Protocol --> FD        Standard --> CANopen    J1939

