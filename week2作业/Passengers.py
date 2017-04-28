#encoding:utf-8

store = {}

resultPath = '/media/nell/软件/Ubuntu/week2作业/result.txt'

import re


def comment(pathOfTxt):
    
    with open(pathOfTxt,'r') as file:

        comments = file.read()

        return comments


comments = comment('/media/nell/软件/Ubuntu/week2作业/太空旅店.txt')


def operate(pathOfTxt):

    with open(pathOfTxt) as readFile:

        for line in readFile.readlines():

            line = line.strip('\n')

            results = re.findall(line, comments)

            num = len(results)

            store[line] = num

    with open(resultPath, 'a') as writeFile:

        for line in store:

            writeFile.write(str(store[line]))

            writeFile.write(' ')

            writeFile.write(line)

            writeFile.write('\n')



operate('/media/nell/软件/Ubuntu/week2作业/词典/主题/风格.txt')

operate('/media/nell/软件/Ubuntu/week2作业/词典/主题/题材内容.txt')

operate('/media/nell/软件/Ubuntu/week2作业/词典/主题/主题.txt')

operate('/media/nell/软件/Ubuntu/week2作业/词典/制作/编剧.txt')

operate('/media/nell/软件/Ubuntu/week2作业/词典/制作/出品公司.txt')

operate('/media/nell/软件/Ubuntu/week2作业/词典/制作/导演.txt')

operate('/media/nell/软件/Ubuntu/week2作业/词典/制作/选景.txt')

operate('/media/nell/软件/Ubuntu/week2作业/词典/制作/制作.txt')

operate('/media/nell/软件/Ubuntu/week2作业/词典/视听/动作.txt')

operate('/media/nell/软件/Ubuntu/week2作业/词典/视听/画面.txt')

operate('/media/nell/软件/Ubuntu/week2作业/词典/视听/镜头.txt')

operate('/media/nell/软件/Ubuntu/week2作业/词典/视听/视听.txt')

operate('/media/nell/软件/Ubuntu/week2作业/词典/视听/视听效果中的其它.txt')

operate('/media/nell/软件/Ubuntu/week2作业/词典/视听/音乐.txt')

operate('/media/nell/软件/Ubuntu/week2作业/词典/剧情/发展.txt')

operate('/media/nell/软件/Ubuntu/week2作业/词典/剧情/结局.txt')

operate('/media/nell/软件/Ubuntu/week2作业/词典/剧情/剧情.txt')

operate('/media/nell/软件/Ubuntu/week2作业/词典/剧情/开头.txt')

operate('/media/nell/软件/Ubuntu/week2作业/词典/剧情/泪点.txt')

operate('/media/nell/软件/Ubuntu/week2作业/词典/剧情/笑点.txt')

operate('/media/nell/软件/Ubuntu/week2作业/词典/角色/反派.txt')

operate('/media/nell/软件/Ubuntu/week2作业/词典/角色/角色.txt')

operate('/media/nell/软件/Ubuntu/week2作业/词典/角色/角色中的其它.txt')

operate('/media/nell/软件/Ubuntu/week2作业/词典/角色/男主角.txt')

operate('/media/nell/软件/Ubuntu/week2作业/词典/角色/配角.txt')

operate('/media/nell/软件/Ubuntu/week2作业/词典/角色/熊顿.txt')