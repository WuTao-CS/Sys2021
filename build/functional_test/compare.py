import os
import sys


def deleteSpaceLines(dirname):

    for maindir, subdir, file_name_list in os.walk(dirname):
        for filename in file_name_list:
            path = os.path.join(maindir, filename)
            if(os.path.splitext(path)[1]!='.txt'):
                continue
            txt = []
            f1 = open(path,'r',encoding='ascii')
            cnt=0
            for line in f1.readlines():
                if cnt==0 and line == '\n':
                    continue
                txt.append(line)
            f1.close()
            os.remove(path)
            f2 = open(path,'w',encoding='ascii')
            f2.write(''.join(txt))
            f2.close()
def Comparetxt(dirname):
    for maindir, subdir, file_name_list in os.walk(dirname):
        for filename in file_name_list:
            path = os.path.join(maindir, filename)
            if(os.path.splitext(path)[1]!='.txt'):
                continue
            file=os.path.splitext(path)[0]+'.out'
            txt = []
            txt2 = []
            f1 = open(path,'r',encoding='ascii')
            for line in f1.readlines():
                txt.append(line.strip('\n'))
            f1.close()
            f2 = open(file,'r',encoding='ascii')
            for line in f2.readlines():
                txt2.append(line.strip('\n'))
            f2.close()
            # print(file)
            # print(txt)
            # print(txt2)
            for i in range(len(txt)):
                if txt[i]!=txt2[i]:
                    print("Error")
                    print(txt)
                    print(txt2)
                    print(os.path.splitext(path)[0])
                    break

if __name__ == '__main__':
    path="./"
    deleteSpaceLines(path)
    print("Delete OK")
    Comparetxt(path)
    print("Check OK")