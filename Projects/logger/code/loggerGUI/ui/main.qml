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


    Row {
        anchors.fill: parent
        spacing: 1

        TabBar {
            id: bar

            width: 200
            height: parent.height

            background: Rectangle {
                color: "#f4d37c"
            }

            MenuButton{
                id: home
                width: 180
                height: 50
                anchors.top: bar.top
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

            width: 800
            height: parent.height

            currentIndex: bar.currentIndex

            Item {
            }

            LoggViewPage{
            }

            SettingPage{
            }
        }

    }

}


//property
//style
//local variable
