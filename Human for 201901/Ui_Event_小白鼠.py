# -*- coding: utf-8 -*-

"""
Module implementing MainWindow.
"""
from PyQt5.QtCore import pyqtSlot
from PyQt5.QtWidgets import QMainWindow
from PyQt5 import QtWidgets

from Ui_小白鼠 import Ui_MainWindow

import time
import 文件读写 as fro
import threading

class MainWindow(QMainWindow, Ui_MainWindow):
    """
    Class documentation goes here.
    """
    def __init__(self, parent=None):
        """
        Constructor
        
        @param parent reference to the parent widget
        @type QWidget
        """
        super(MainWindow, self).__init__(parent)
        self.setupUi(self)
    
    @pyqtSlot()
    def on_pushButton_clicked(self):
        """
        Slot documentation goes here.
        """
        global 移动
        行为帧=int(self.MCtext.toPlainText())
        if 行为帧>=1 and 行为帧<=移动:
            print(fro.写入行为帧(行为帧)+'\n')
        # TODO: not implemented yet
        #raise NotImplementedError

def 获得信息():
        信息帧=fro.获取信息帧()
        if 信息帧!="error":
            try:
                信息集=信息帧.split('\n')
                信息集[1]=信息集[1].split(' ')[2]
                信息集[2]=信息集[2].split(' ')[1]
            except:
                print('获得信息错误：'+信息帧)
            return 信息集
        else:
            return "0"
        
def 信息刷新():
    global 移动
    生命=10.
    fro.清理残留信息帧()
    while 生命>0:
        while fro.可获取信息帧检查():
            信息=获得信息()
            if 信息!="0":
                生命=float(信息[1])
                移动=int(信息[2])
                ui.VisionLabel.setText('视觉：'+信息[0])
                ui.HPLabel.setText('生命：'+信息[1])
                ui.MoveLabel.setText('移动：'+信息[2])
                time.sleep(0.45)
            else:
                time.sleep(0.1)
    print('—————— 小虫死亡 ——————')
    #sys.exit()
    
if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    ui = MainWindow()
    ui.show()
    移动=1
    try:
        t=threading.Thread(target=信息刷新)
        t.start()
    except:
        print('信息刷新线程运行失败')
    
    sys.exit(app.exec_())
