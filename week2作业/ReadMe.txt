20161003300 丁嘉诚
×作业代码参考自陈启东同学

下面是我对他代码的理解：
def comment(pathOfTxt):
    
    with open(pathOfTxt,'r') as file:

        comments = file.read()

        return comments
comments = comment('/media/nell/软件/Ubuntu/week2作业/太空旅店.txt')
先读取文件太空旅客.txt

def operate(pathOfTxt):

    with open(pathOfTxt) as readFile:

        for line in readFile.readlines():

            line = line.strip('\n')

            results = re.findall(line, comments)

            num = len(results)

            store[line] = num                   //读取词典中的文件并且将词典中的每一行与太空旅客.TXT进行findall匹配，最后得到的list result的长度就是匹配到的次数


    with open(resultPath, 'a') as writeFile:

        for line in store:

            writeFile.write(str(store[line]))

            writeFile.write(' ')

            writeFile.write(line)        

            writeFile.write('\n')                //将结果写入result文件



总结：
我觉的这个方法有一个缺点就是，由于没有使用分词，而是直接用词典对文本进行匹配，会导致重复匹配，比如词典中的“喜剧”一次，如果匹配文本中同时出现“喜剧”和“喜剧人物”两个词的话，就会导致喜剧这个词被匹配两次。如果使用分词，然后用分词的到的结果去匹配词典。

