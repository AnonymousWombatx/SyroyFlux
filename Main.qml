import QtQuick
import QtQuick.Layouts
import QtQuick.Controls


ApplicationWindow {
    id: window
    width: 1280
    height: 960
    minimumWidth: 200
    minimumHeight: 250
    visible: true
    title: qsTr("SyroyFlux")

    FontLoader {
        id: stdF
        source: Qt.resolvedUrl("qml/resources/fonts/Nunito.ttf")
    }

    ColumnLayout{

        anchors.fill: parent
        anchors.margins: window.width*0.02

        Rectangle {
            id: header

            color: "black"
            opacity: 0.5

            Layout.fillWidth: true
            Layout.preferredHeight: window.height * 0.12

            radius: window.width/100

            RowLayout {
                id: headerRow
                anchors.fill: parent
                anchors.margins: window.width*0.015
                spacing: window.width*0.015

                ColumnLayout{
                    Text {
                        text: "SyroyFlux"
                        font {
                            family: stdF.name
                            pixelSize: header.height * 0.35
                        }
                        color: "white"
                    }
                    Text {
                        text: "A Syroy Product"
                        font {
                            family: stdF.name
                            pixelSize: header.height * 0.20
                        }
                        color: "white"
                    }
                }

                Item {Layout.fillWidth: true}

                Image {
                    id: logo
                    source: Qt.resolvedUrl("qml/resources/images/SyroyFlux.jpeg")

                    fillMode: Image.PreserveAspectFit
                    Layout.preferredHeight: header.height*0.7
                    Layout.preferredWidth: logo.implicitWidth*(Layout.preferredHeight / logo.implicitHeight)
                    sourceSize.height: Layout.preferredHeight
                    mipmap: true
                }
            }
        }

        Item {
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

    }

}
