import os

num = 1
flist = []


for path, subdirs, files in os.walk(r'./frames'):
    for filename in files:
        flist.append(str(filename[:-4]))

flist.sort()

with open("output.txt", "w") as a:
    for fname in flist:
        a.write(str(fname) + os.linesep)          
        num += 1
