# coding=utf-8

import time
import 文件读写 as fro
import 小白鼠大脑 as ai

def 获得信息():
        信息帧=fro.获取信息帧()
        信息=信息帧.split('\n')
        信息[1]=信息[1].split(' ')[2]
        信息[2]=信息[2].split(' ')[1]
        return 信息

if __name__ == '__main__':
        生命=10.
        记忆{}
        fro.清理残留信息帧()
        while 生命>0:
                while fro.可获取信息帧检查():
                        信息=获得信息()
                        视觉=信息[0]
                        生命=float(信息[1])
                        移动=int(信息[2])
                        print('视觉：'+视觉)
                        print('生命：'+str(生命))
                        print('移动：'+str(移动))
                        记忆=ai.信息输入(视觉,生命,移动,记忆)
                        print(fro.写入行为帧(记忆['行动'])+'\n')
                time.sleep(0.45)
                
        print('——————载体死亡！——————')
                
    
