import QtQuick 2.15
import QtQuick.Controls.Basic 2.15
import QtQuick.Layouts 2


Item{

    Column {
        anchors.fill: parent
        id: grid
        spacing: 10

        RowLayout {
            spacing: 10
            width: parent.width
            Layout.fillHeight: true

            Rectangle{
                Layout.fillWidth: true
                Layout.minimumWidth: context0.implicitWidth
                Layout.minimumHeight: 100
                color: "lightblue"
                border.color: "black"
                border.width: 2

                ColumnLayout {
                    id: context0
                    anchors.fill: parent
                    Layout.fillWidth: true
                    spacing: 5

                    Text {
                        Layout.alignment: Qt.AlignHCenter
                        font.bold: true
                        font.family: "Helvetica"
                        font.pointSize: 12
                        text: "General Setting"
                    }

                    RowLayout {
                        id:version
                        Layout.fillWidth: true
                        spacing: 10

                        Rectangle {
                            Layout.minimumWidth: storageText.implicitWidth + 10
                            Layout.minimumHeight: storageCombo.height
                            Layout.leftMargin: 10
                            color:"lightgray"
                            border.width: 1
                            border.color: "black"
                            Text {
                                id: storageText
                                anchors.centerIn: parent
                                text: "Storage Selection"
                                font.pointSize: 10
                            }
                        }

                        ComboBox {
                            id: storageCombo
                            Layout.fillWidth: true
                            Layout.rightMargin: 10
                            background: Rectangle {
                                color:"lightgray"
                                border.width: 1
                                border.color: "black"
                            }
                            model: [ "Internal Flash", "USB Stick", "SD Card"]
                        }
                    }
                }
            }

            Rectangle {
                Layout.fillWidth: true
                Layout.minimumWidth: context1.implicitWidth
                Layout.minimumHeight: 100
                color: "lightblue"
                border.color: "black"
                border.width: 2

                ColumnLayout {
                    id: context1
                    anchors.fill: parent
                    //Layout.fillWidth: true
                    spacing: 5

                    Text {
                        Layout.alignment: Qt.AlignHCenter
                        font.bold: true
                        font.family: "Helvetica"
                        font.pointSize: 12
                        text: "CAN-BUS Setting"
                    }

                    RowLayout {
                        Layout.fillWidth: true
                        spacing: 10

                        Rectangle {
                            Layout.minimumWidth: text.implicitWidth + 10
                            Layout.minimumHeight: combo.height
                            Layout.leftMargin: 10
                            color:"lightgray"
                            border.width: 1
                            border.color: "black"
                            Text {
                                id: text
                                anchors.centerIn: parent
                                text: "Version"
                                font.pointSize: 10
                            }
                        }

                        ComboBox {
                            id: combo
                            Layout.fillWidth: true
                            Layout.rightMargin: 10
                            background: Rectangle {
                                color:"lightgray"
                                border.width: 1
                                border.color: "black"
                            }
                            model: [ "CAN 2.0 (Classical CAN)", "CAN FD", "CAN XL"]
                        }
                    }
                }
            }

            Rectangle {
                Layout.fillWidth: true
                Layout.minimumWidth: text2.implicitWidth
                Layout.minimumHeight: text2.implicitHeight
                //Layout.minimumHeight: 200
                color: "lightblue"
                border.color: "black"
                border.width: 2
                Text {
                    id: text2
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.bold: true
                    font.family: "Helvetica"
                    font.pointSize: 12
                    text: "RS485 Setting"
                }
            }
        }
        // Row {
        //     spacing: 10

        //     Rectangle {
        //         width: 150
        //         height: 200
        //         color: "lightblue"
        //         border.color: "black"
        //         border.width: 2
        //         Text {text: "COM-Port Setting"}
        //     }

        //     Rectangle {
        //         width: 150
        //         height: 200
        //         color: "lightblue"
        //         border.color: "black"
        //         border.width: 2
        //         Text {text: "Date & Time Setting"}
        //     }
        // }
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



//COM-Port Setting --> port(com1..) // buad autoconnect //auto Connections // speed // parity
//CAN-BUS Setting -->  -->         Protocol (higher-layer) --> CANopen    SAE J1939  SAE J2284

