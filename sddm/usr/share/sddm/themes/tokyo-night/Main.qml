import QtQuick 2.0
import SddmComponents 2.0

Rectangle {
    width: 640
    height: 480

    LayoutMirroring.enabled: Qt.locale().textDirection == Qt.RightToLeft
    LayoutMirroring.childrenInherit: true

    property int sessionIndex: session.index

    TextConstants { id: textConstants }

    Connections {
        target: sddm

        onLoginSucceeded: {
            errorMessage.color = "#9ece6a"
            errorMessage.text = textConstants.loginSucceeded
        }

        onLoginFailed: {
            password.text = ""
            errorMessage.color = "#f7768e"
            errorMessage.text = textConstants.loginFailed
        }
    }

    Background {
        anchors.fill: parent
        source: config.Background
        fillMode: Image.PreserveAspectCrop
        onStatusChanged: {
            if (status == Image.Error && source != config.defaultBackground) {
                source = config.defaultBackground
            }
        }
    }

    Rectangle {
        anchors.fill: parent
        color: "transparent"

        Rectangle {
            anchors.centerIn: parent
            width: Math.max(320, mainColumn.implicitWidth + 50)
            height: Math.max(320, mainColumn.implicitHeight + 50)
            color: "#1f2335"
            opacity: 0.9
            radius: 20

            Column {
                id: mainColumn
                anchors.centerIn: parent
                spacing: 12

                Text {
                    anchors.horizontalCenter: parent.horizontalCenter
                    color: "#c0caf5"
                    verticalAlignment: Text.AlignVCenter
                    height: text.implicitHeight
                    font.family: config.Font
                    font.bold: true
                    font.italic: false
                    font.pointSize: config.FontSize + 4
                    text: textConstants.welcomeText.arg(sddm.hostName)
                }

                Column {
                    width: parent.width
                    spacing: 4
                    Text {
                        id: lblName
                        width: parent.width
                        color: "#c0caf5"
                        text: textConstants.userName
                        font.bold: true
                        font.pointSize: config.FontSize
                    }

                    TextBox {
                        id: name
                        width: parent.width; height: 30
                        text: userModel.lastUser
                        font.pointSize: config.FontSize

                        KeyNavigation.backtab: rebootButton; KeyNavigation.tab: password

                        Keys.onPressed: {
                            if (event.key === Qt.Key_Return || event.key === Qt.Key_Enter) {
                                sddm.login(name.text, password.text, sessionIndex)
                                event.accepted = true
                            }
                        }
                    }
                }

                Column {
                    width: parent.width
                    spacing: 4
                    Text {
                        id: lblPassword
                        width: parent.width
                        color: "#c0caf5"
                        text: textConstants.password
                        font.bold: true
                        font.pointSize: config.FontSize
                    }

                    PasswordBox {
                        id: password
                        width: parent.width; height: 30
                        font.pointSize: config.FontSize
                        tooltipBG: "#1f2335"

                        KeyNavigation.backtab: name; KeyNavigation.tab: session

                        Keys.onPressed: {
                            if (event.key === Qt.Key_Return || event.key === Qt.Key_Enter) {
                                sddm.login(name.text, password.text, sessionIndex)
                                event.accepted = true
                            }
                        }
                    }
                }

                Row {
                    spacing: 4
                    width: parent.width
                    z: 100

                    Column {
                        z: 100
                        width: parent.width * 0.5
                        spacing: 4
                        anchors.bottom: parent.bottom

                        Text {
                            id: lblSession
                            width: parent.width
                            color: "#c0caf5"
                            text: textConstants.session
                            wrapMode: TextEdit.WordWrap
                            font.bold: true
                            font.pointSize: config.FontSize
                        }

                        ComboBox {
                            id: session
                            width: parent.width; height: 30
                            font.pointSize: config.FontSize

                            arrowIcon: "angle-down.png"

                            model: sessionModel
                            index: sessionModel.lastIndex

                            KeyNavigation.backtab: password; KeyNavigation.tab: layoutBox
                        }
                    }

                    Column {
                        z: 100
                        width: parent.width * 0.5
                        spacing : 4
                        anchors.bottom: parent.bottom

                        Text {
                            id: lblLayout
                            width: parent.width
                            color: "#c0caf5"
                            text: textConstants.layout
                            wrapMode: TextEdit.WordWrap
                            font.bold: true
                            font.pointSize: config.FontSize
                        }

                        LayoutBox {
                            id: layoutBox
                            width: parent.width; height: 30
                            font.pointSize: config.FontSize

                            arrowIcon: "angle-down.png"

                            KeyNavigation.backtab: session; KeyNavigation.tab: loginButton
                        }
                    }
                }

                Column {
                    width: parent.width
                    Text {
                        id: errorMessage
                        anchors.horizontalCenter: parent.horizontalCenter
                        text: textConstants.prompt
                        color: "#c0caf5"
                        font.pointSize: config.FontSize
                    }
                }

                Row {
                    spacing: 4
                    anchors.horizontalCenter: parent.horizontalCenter
                    property int btnWidth: Math.max(loginButton.implicitWidth,
                                                    shutdownButton.implicitWidth,
                                                    rebootButton.implicitWidth, 80)
                    Button {
                        id: loginButton
                        text: textConstants.login
                        width: parent.btnWidth
                        color: "#7dcfff"
                        textColor: "#24283b"
                        activeColor: "#9ece6a"

                        onClicked: sddm.login(name.text, password.text, sessionIndex)

                        KeyNavigation.backtab: layoutBox; KeyNavigation.tab: shutdownButton
                    }

                    Button {
                        id: shutdownButton
                        text: textConstants.shutdown
                        width: parent.btnWidth
                        color: "#f7768e"
                        textColor: "#24283b"
                        activeColor: "#ff9e64"

                        onClicked: sddm.powerOff()

                        KeyNavigation.backtab: loginButton; KeyNavigation.tab: rebootButton
                    }

                    Button {
                        id: rebootButton
                        text: textConstants.reboot
                        width: parent.btnWidth
                        color: "#e0af68"
                        textColor: "#24283b"
                        activeColor: "#ff9e64"

                        onClicked: sddm.reboot()

                        KeyNavigation.backtab: shutdownButton; KeyNavigation.tab: name
                    }
                }
            }
        }
    }

    Component.onCompleted: {
        if (name.text == "")
            name.focus = true
        else
            password.focus = true
    }
}
