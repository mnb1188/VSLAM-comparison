import os

num = 1
flist = []


for path, subdirs, files in os.walk(r'./frames'):
    for filename in files:
        #a.write(str(num) + str(" ") + str(filename) + os.linesep)
        #num += 1
        flist.append(str(filename[:-4]))

flist.sort()

with open("output.txt", "w") as a:
    for fname in flist:
        a.write(str(fname) + os.linesep)                #str(num) + str(" ") + 
        num += 1