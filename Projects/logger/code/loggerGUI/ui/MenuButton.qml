import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls.Basic 2.15
import QtQuick.Layouts 2.15

TabButton{

    property alias imageSource: image.source
    property alias name: text.text

    background: Rectangle
    {
        color: "black"
        radius: 10
    }

    Image {
        id: image
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: text
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        anchors.rightMargin: 5
        color:"white"
        font.bold: true
        font.family: "Helvetica"
        font.pointSize: 12
        verticalAlignment: Text.AlignVCenter
    }
}
