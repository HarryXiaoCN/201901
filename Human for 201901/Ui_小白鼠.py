# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'K:\201901\Human for 201901\小白鼠.ui'
#
# Created by: PyQt5 UI code generator 5.11.3
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(460, 142)
        self.centralWidget = QtWidgets.QWidget(MainWindow)
        self.centralWidget.setObjectName("centralWidget")
        self.VisionLabel = QtWidgets.QLabel(self.centralWidget)
        self.VisionLabel.setGeometry(QtCore.QRect(10, 10, 771, 21))
        font = QtGui.QFont()
        font.setFamily("微软雅黑")
        font.setPointSize(14)
        self.VisionLabel.setFont(font)
        self.VisionLabel.setObjectName("VisionLabel")
        self.HPLabel = QtWidgets.QLabel(self.centralWidget)
        self.HPLabel.setGeometry(QtCore.QRect(10, 40, 771, 21))
        font = QtGui.QFont()
        font.setFamily("微软雅黑")
        font.setPointSize(14)
        self.HPLabel.setFont(font)
        self.HPLabel.setObjectName("HPLabel")
        self.MoveLabel = QtWidgets.QLabel(self.centralWidget)
        self.MoveLabel.setGeometry(QtCore.QRect(10, 70, 771, 21))
        font = QtGui.QFont()
        font.setFamily("微软雅黑")
        font.setPointSize(14)
        self.MoveLabel.setFont(font)
        self.MoveLabel.setObjectName("MoveLabel")
        self.MCtext = QtWidgets.QTextEdit(self.centralWidget)
        self.MCtext.setGeometry(QtCore.QRect(10, 100, 331, 31))
        font = QtGui.QFont()
        font.setFamily("微软雅黑")
        font.setPointSize(14)
        self.MCtext.setFont(font)
        self.MCtext.setVerticalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOff)
        self.MCtext.setObjectName("MCtext")
        self.pushButton = QtWidgets.QPushButton(self.centralWidget)
        self.pushButton.setGeometry(QtCore.QRect(350, 100, 101, 31))
        font = QtGui.QFont()
        font.setFamily("微软雅黑")
        font.setPointSize(16)
        self.pushButton.setFont(font)
        self.pushButton.setObjectName("pushButton")
        MainWindow.setCentralWidget(self.centralWidget)

        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "让人当小白鼠"))
        self.VisionLabel.setText(_translate("MainWindow", "视觉："))
        self.HPLabel.setText(_translate("MainWindow", "生命："))
        self.MoveLabel.setText(_translate("MainWindow", "移动："))
        self.MCtext.setHtml(_translate("MainWindow", "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n"
"<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n"
"p, li { white-space: pre-wrap; }\n"
"</style></head><body style=\" font-family:\'微软雅黑\'; font-size:14pt; font-weight:400; font-style:normal;\">\n"
"<p style=\"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; font-size:16pt;\"><br /></p></body></html>"))
        self.pushButton.setText(_translate("MainWindow", "行动"))


