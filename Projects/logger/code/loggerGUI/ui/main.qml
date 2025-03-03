import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls.Basic 2.15
import QtQuick.Layouts 2.15

ApplicationWindow {
    id: mainWindow
    width: 1080
    height: 720
    visible: true
    color: "gray"
    title: qsTr("Logger Tools")


    Row {
        //file  --> load save  help


    }

    TabBar {
        id: bar
        anchors.fill: parent

        MenuButton{
            id: home
            width: 170
            height: 50
            anchors.top: parent.top
            imageSource: "home.png"
            name: "HOME"
        }

        MenuButton{
            id: loggView
            height: home.height
            anchors{
                top: home.bottom
                right: home.right
                left: home.left
                topMargin: 2
            }
            //imageSource: "view.png"
            name: "Logg View"
        }

        MenuButton{
            id: setting
            height: home.height
            width: home.width
            anchors.top: loggView.bottom
            anchors.left: loggView.left
            anchors.topMargin: 2
            imageSource: "setting.png"
            name: "Setting"
        }
    }


    StackLayout {
        anchors.fill: bar
        anchors.leftMargin: 180

        currentIndex: bar.currentIndex

        Item {
        }

        LoggViewPage{
        }

        SettingPage{
        }
    }
}


//property
//style
//local variable
