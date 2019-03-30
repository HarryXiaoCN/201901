# coding=utf-8

import time
import 文件读写 as fro

def 获得信息():
        信息帧=fro.获取信息帧()
        信息=信息帧.split('\n')
        信息[1]=信息[1].split(' ')[2]
        信息[2]=信息[2].split(' ')[1]
        return 信息

if __name__ == '__main__':
        生命=10.
        行为帧=1
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
                        
                        行为帧=int(input('输入移动通道：'))
                        if 行为帧>0 and 行为帧<=移动:
                            print(fro.写入行为帧(行为帧)+'\n')
                        else:
                            行为帧=int(input('输入符合范围的移动通道，否则将跳过本次行动：'))
                            print(fro.写入行为帧(行为帧)+'\n')
                        
                time.sleep(0.45)
                
        print('——————载体死亡！——————')
                
    
