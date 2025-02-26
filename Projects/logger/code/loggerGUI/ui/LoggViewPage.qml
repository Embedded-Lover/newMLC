import QtQuick 2.15
import QtQuick.Controls.Basic 2.15
import QtQuick.Layouts 2.15

Item{
    anchors.fill :parent

    Rectangle{
        id: liveModeControl
        anchors.top: parent.top
        width: parent.width
        height: 50
        //color: "red"
        border.color: "black"
        border.width: 2

        Row {

            anchors.top: parent.top
            spacing: 50

            MenuButton{
                id: playButton
                width: 50
                height: 30
                name: "Play"
            }

            MenuButton{
                width: playButton.width
                height: playButton.hight
                name: "Puse"
            }

            MenuButton{
                width: playButton.width
                height: playButton.hight
                name: "clear"
            }
        }
    }

    // RoundButton {
    //     id: liveModeButton

    //     width: 100
    //     height: 50

    //     contentItem: Text {
    //         text: "Live Mode"
    //         color:"white"
    //         horizontalAlignment: Text.AlignHCenter
    //         verticalAlignment: Text.AlignVCenter
    //     }

    //     font.bold: true
    //     font.pointSize: 12
    //     radius: 100

    //     background: Rectangle
    //     {
    //         color: "black"
    //     }

    //     onClicked: appCore.liveModeGUIChanged()
    // }


    ScrollView {
        anchors.top: liveModeControl.bottom
        anchors.topMargin: 5
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.bottom: parent.bottom


        ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
        ScrollBar.vertical.policy: ScrollBar.AlwaysOn
        ScrollBar.horizontal.interactive: true
        ScrollBar.vertical.interactive: true

        TextArea {
            id: serialDispaly
            wrapMode: Text.Wrap
            color:  "black"
            font.family:  "Arial"
            font.pointSize: 10
        }

        background: Rectangle
        {
            color:  "#dbe9f4"
            border.color:  "black"
            border.width: 2
        }
    }
}

