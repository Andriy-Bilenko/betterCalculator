import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Layouts 1.15
import Calc 1.0
import Addit 1.0

Window {
    id: mainWindow
    visible: true
    width: 600
    height: 800
    title: qsTr("Hello World")
    color: "black"

    Calculator{
        id: calculator
    }


    Additional{
        id: functions
    }

    Item{
        id: mainColumn
        anchors.fill: parent

        TextEdit {
            id: previousTextEdit
            text: qsTr("")
            readOnly: true
            height: parent.height * 0.15
            width: parent.width
            y: 0
            wrapMode: TextEdit.WrapAnywhere
            color: "white"
            onTextChanged: adjustFontSize()

            function adjustFontSize() {
                font.pixelSize = 40
                while (previousTextEdit.contentHeight > previousTextEdit.height) {
                    font.pixelSize -= 1
                }
            }
        }

        TextEdit{
            id: currentTextEdit
            text: qsTr("")
            property string placeholderText: "0"
            Text {
                text: currentTextEdit.placeholderText
                color: "#666"
                font.pixelSize: 40
                visible: (currentTextEdit.text == "")
            }
            readOnly: true
            height: parent.height * 0.15
            width: parent.width
            y: parent.height * 0.15
            wrapMode: TextEdit.WrapAnywhere
            color: "white"
            onTextChanged: {
                if(currentTextEdit.text != ""){
                    buttonClear.text = "C";
                }else{
                    buttonClear.text = "AC";
                }
                adjustFontSize()
            }

            function adjustFontSize() {
                font.pixelSize = 40
                while (currentTextEdit.contentHeight > currentTextEdit.height) {
                    font.pixelSize -= 1
                }
            }
        }

        GridLayout{
            id: gridLayout1
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom

            columns: 4
            rows: 7

            height: parent.height * 0.7

            Button{
                id: buttonClear
                text: qsTr("AC")
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pointSize: 24
                onClicked: {
                    if(currentTextEdit.text == ""){
                        previousTextEdit.text = ""
                    }else{
                        currentTextEdit.text = ""
                    }
                }
                background: Rectangle {
                    color: "#6b2020"
                    radius: 0
                }
            }
            Button{
                id: buttonClearOne
                text: qsTr("←")
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pointSize: 24
                onClicked: {
                    if(currentTextEdit.text != ""){
                        currentTextEdit.text = functions.clearOne(currentTextEdit.text)
                    }
                }
                background: Rectangle {
                    color: "#666"
                    radius: 0
                }
            }
            Button{
                id: buttonOpenBrace
                text: qsTr("(")
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pointSize: 24
                onClicked: {
                    currentTextEdit.text += "("
                }
                background: Rectangle {
                    color: "#666"
                    radius: 0
                }
            }
            Button{
                id: buttonCloseBrace
                text: qsTr(")")
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pointSize: 24
                onClicked: {
                    currentTextEdit.text += ")"
                }
                background: Rectangle {
                    color: "#666"
                    radius: 0
                }
            }
            //row#2
            Button{
                id: button7
                text: qsTr("7")
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pointSize: 24
                onClicked: {
                    currentTextEdit.text += "7"
                }
                background: Rectangle {
                    color: "#433939"
                    radius: 0
                }
            }
            Button{
                id: button8
                text: qsTr("8")
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pointSize: 24
                onClicked: {
                    currentTextEdit.text += "8"
                }
                background: Rectangle {
                    color: "#433939"
                    radius: 0
                }
            }
            Button{
                id: button9
                text: qsTr("9")
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pointSize: 24
                onClicked: {
                    currentTextEdit.text += "9"
                }
                background: Rectangle {
                    color: "#433939"
                    radius: 0
                }
            }
            Button{
                id: buttonDivide
                text: qsTr("/")
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pointSize: 24
                onClicked: {
                    currentTextEdit.text += "/"
                }
                background: Rectangle {
                    color: "#666"
                    radius: 0
                }
            }
            //row #3:
            Button{
                id: button4
                text: qsTr("4")
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pointSize: 24
                onClicked: {
                    currentTextEdit.text += "4"
                }
                background: Rectangle {
                    color: "#433939"
                    radius: 0
                }
            }
            Button{
                id: button5
                text: qsTr("5")
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pointSize: 24
                onClicked: {
                    currentTextEdit.text += "5"
                }
                background: Rectangle {
                    color: "#433939"
                    radius: 0
                }
            }
            Button{
                id: button6
                text: qsTr("6")
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pointSize: 24
                onClicked: {
                    currentTextEdit.text += "6"
                }
                background: Rectangle {
                    color: "#433939"
                    radius: 0
                }
            }
            Button{
                id: buttonMultipy
                text: qsTr("*")
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pointSize: 24
                onClicked: {
                    currentTextEdit.text += "*"
                }
                background: Rectangle {
                    color: "#666"
                    radius: 0
                }
            }
            //row#4:
            Button{
                id: button1
                text: qsTr("1")
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pointSize: 24
                onClicked: {
                    currentTextEdit.text += "1"
                }
                background: Rectangle {
                    color: "#433939"
                    radius: 0
                }
            }
            Button{
                id: button2
                text: qsTr("2")
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pointSize: 24
                onClicked: {
                    currentTextEdit.text += "2"
                }
                background: Rectangle {
                    color: "#433939"
                    radius: 0
                }
            }
            Button{
                id: button3
                text: qsTr("3")
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pointSize: 24
                onClicked: {
                    currentTextEdit.text += "3"
                }
                background: Rectangle {
                    color: "#433939"
                    radius: 0
                }
            }
            Button{
                id: buttonSubtract
                text: qsTr("-")
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pointSize: 24
                onClicked: {
                    currentTextEdit.text += "-"
                }
                background: Rectangle {
                    color: "#666"
                    radius: 0
                }
            }
            //row#5:
            Button{
                id: button0
                text: qsTr("0")
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pointSize: 24
                onClicked: {
                    currentTextEdit.text += "0"
                }
                background: Rectangle {
                    color: "#433939"
                    radius: 0
                }
            }
            Button{
                id: buttonDot
                text: qsTr(".")
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pointSize: 24
                onClicked: {
                    currentTextEdit.text += "."
                }
                background: Rectangle {
                    color: "#433939"
                    radius: 0
                }
            }
            Button{
                id: buttonPower
                text: qsTr("^")
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pointSize: 24
                onClicked: {
                    currentTextEdit.text += "^"
                }
                background: Rectangle {
                    color: "#666"
                    radius: 0
                }
            }
            Button{
                id: buttonAdd
                text: qsTr("+")
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pointSize: 24
                onClicked: {
                    currentTextEdit.text += "+"
                }
                background: Rectangle {
                    color: "#666"
                    radius: 0
                }
            }
            //row#6:
            Button{
                id: buttonSin
                text: qsTr("sin")
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pointSize: 24
                onClicked: {
                    currentTextEdit.text += "sin("
                }
                background: Rectangle {
                    color: "#666"
                    radius: 0
                }
            }
            Button{
                id: buttonCos
                text: qsTr("cos")
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pointSize: 24
                onClicked: {
                    currentTextEdit.text += "cos("
                }
                background: Rectangle {
                    color: "#666"
                    radius: 0
                }
            }
            Button{
                id: buttonTan
                text: qsTr("tan")
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pointSize: 24
                onClicked: {
                    currentTextEdit.text += "tan("
                }
                background: Rectangle {
                    color: "#666"
                    radius: 0
                }
            }
            Button{
                id: buttonEqual
                text: qsTr("=")
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.rowSpan: 2 // Set the rowSpan to include the unused cell
                font.pointSize: 24
                onClicked: {
                    if(currentTextEdit.text != ""){
                        previousTextEdit.text = currentTextEdit.text + "="
                        currentTextEdit.text = calculator.calculate(currentTextEdit.text)
                    }
                }
                background: Rectangle {
                    color: "#736938"
                    radius: 0
                }
            }
            //row#7 (last):
            Button{
                id: buttonLn
                text: qsTr("ln")
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pointSize: 24
                onClicked: {
                    currentTextEdit.text += "ln("
                }
                background: Rectangle {
                    color: "#666"
                    radius: 0
                }
            }
            Button{
                id: buttonExp
                text: qsTr("e")
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pointSize: 24
                onClicked: {
                    currentTextEdit.text += "e"
                }
                background: Rectangle {
                    color: "#666"
                    radius: 0
                }
            }
            Button{
                id: buttonPi
                text: qsTr("pi")
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pointSize: 24
                onClicked: {
                    currentTextEdit.text += "pi"
                }
                background: Rectangle {
                    color: "#666"
                    radius: 0
                }
            }
        }
    }

}
