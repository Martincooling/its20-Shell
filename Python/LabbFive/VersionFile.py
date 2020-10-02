import datetime, sys, os
fileDirectory = "E:\\Programmering\\Logfolder"         #File to copy directory.
fileName = "Logfile.log"         #File to copy Name.
fileNewDirectory = "E:\\Programmering\\newfolder"           #Target directory, the program will put the copied file here.
nameLen = fileName.rfind(".")
fileExt = fileName[nameLen:]
pureName = fileName[:nameLen]
time = datetime.datetime.now()
version = time.strftime("%Y%m%d%H%M%S")


f = open(fileDirectory + "\\" + fileName,"r")
fileContainer = f.read()
f.close()
fileExist = False

os.makedirs(fileNewDirectory, exist_ok=True)

for filee in os.listdir(fileNewDirectory):
    if filee.find(fileName) > -1:
        fileExist = True
        break
if fileExist == True:
    f = open(f"{fileNewDirectory}\\{pureName}-{version}-{fileExt}" , "a")
    f.write(fileContainer)
else:  
    f = open(f"{fileNewDirectory}\\{fileName}", "a")
    f.write(fileContainer)
f.close()  