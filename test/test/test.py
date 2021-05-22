"""
used to find if all files in functional test is successfully valided by flex&bison lexical analysis
"""
import subprocess 
import os
import re
import sys

cmakePath="../build/"

if len(sys.argv)<=1:
    print("Useage:")
    print("python3 ./test.py exename")
    raise Exception("Need at least two parameters!")

curPath=os.getcwd()
curDir="./"
curPath=os.path.join(curPath,curDir)

names=os.listdir(curPath)
curNames=[]
for name in names:
    if name[-3:]==".sy":
        curNames.append(name)

exe=cmakePath+sys.argv[1]+" "

allFiles=0
failedFiles=0
for curName in curNames:
    file = os.path.join(curPath,curName)
    print("Current file is:",file)
    main=exe+file
    rc,out= subprocess.getstatusoutput(main)

    allFiles+=1
    # print(rc)
    print(out)
    # if re.search("syntax error",out)!=None:
    #     failedFiles+=1
    #     print(file)
    #     print("")
    print("")
print("failedFiles/allFiles:  {}/{}".format(failedFiles,allFiles))