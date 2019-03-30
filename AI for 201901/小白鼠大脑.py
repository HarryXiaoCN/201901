# coding=utf-8

import random as r

def 获得众数(L):
    x=dict((a,L.count(a)) for a in L) 
    y=[k for k,v in x.items() if max(x.values())==v] 
    return y

def 信息输入(v,h,d,m):
    
    #字典初始化
    
    if '行动' not in m.keys():
        m['行动']=1
        
    if '轨迹' not in m.keys():
        m['轨迹']=[]
        
    #以下两行注释被生命间距记忆代替
        
    #if '行为反馈' not in m.keys():
    #    m['行为反馈']=[]
    
    if '生命间距记忆' not in m.keys():
        m['生命间距记忆']=[]
        
    if '上次生命' not in m.keys():
        m['上次生命']=h
    else:
        生命间距=m['上次生命']-h
        m['生命间距记忆'].append(生命间距)
        
        #如果行为引起的反馈是非常态
        
        if 生命间距!=获得众数(m['生命间距记忆']):
            
            #一个永生反馈
            
            if 生命间距>=0:
                
                #启用行为复现模块

                #轨迹由近向远复现，若视觉信息与轨迹前视觉信息不吻合，复现长度变短，否则增长至合理最长度
                
            #一个死亡反馈
                
            else if 生命间距<0:
                
                #启用行为封禁模块

                #轨迹由近向远逆进行，并查看当前视觉与之前视觉吻合，则建立当前视觉的禁忌行为集合


        #如果是常态
                
        else:
            #启用行为遍历模块
            
                
            
            
            
            

    
