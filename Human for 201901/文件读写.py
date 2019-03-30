# coding=utf-8

import os

def 获取信息帧():
	v=''
	try:
		with open('..\小白鼠.info', 'r') as f:
			v=f.read()
		os.rename('..\小白鼠.info','..\小白鼠.info-RO')
	except:
		v='error'
	return v

def 写入行为帧(a):
	try:
		if os.path.exists('..\小白鼠.action-RO'):
			with open('..\小白鼠.action-RO', 'w+') as f:
				f.write('ADIR ' + str(a))
			os.rename('..\小白鼠.action-RO','..\小白鼠.action')
		else:
			with open('..\小白鼠.action', 'w+') as f:
				f.write('ADIR ' + str(a))
	except:
		return '行为帧['+str(a)+']写入失败'
	return '行为帧['+str(a)+']写入成功'

def 可获取信息帧检查():
	return os.path.exists('..\小白鼠.info')

def 清理残留信息帧():
	if os.path.exists('..\小白鼠.info'):
		os.rename('..\小白鼠.info','..\小白鼠.info-RO')