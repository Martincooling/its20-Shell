import datetime, time
import os
import fnmatch
import shutil
import argparse
os.system('cls')

#UPPGIFT 1
#todayDate = datetime.date.today()
#xmasDate = datetime.date(2020, 12, 24)
#timeLeft = xmasDate - todayDate
#print (timeLeft.days)

#Plussa på datum lär :)
#thirdyDaysFromNow = datetime.datetime.today() + datetime.timedelta(days=-30) #Tar bort 30 dagar

#UPPGIFT 2
#path = r"D:\\SKOLARBETE\\NACKADEMIN\\ITS20 - Shell\\Python\\LabbFive\\massaGrejer"
#listDir = os.listdir(path)
#for line in listDir:
#    size = os.path.getsize(f"{path}\\{line}")
#    print(f"{line} har {size}bytes")

    
#UPPGIFT 3.1
#path = r"D:\\SKOLARBETE\\NACKADEMIN\\ITS20 - Shell\\Python\\LabbFive\\massaGrejer"
#userInput = input('Skriv in något du vill filtrera\n')
#listDir = os.listdir(path)
#for line in listDir:
#    result = line.endswith(userInput)
#    if result:
#        print(line)

#UPPGIFT 3.2 POG ANVÄND CMD FÖR DET HÄRA
parser = argparse.ArgumentParser(description="Allmän programhjälp") #-d
parser.add_argument("-d", type=str, help="Ange directory") #-d directory
parser.add_argument("-f", type=str, help="Ange filtyp") #-f filter
args = parser.parse_args()

for line in os.listdir(args.d):
    if args.f != None:
        if line.find(args.f) == -1:
            continue
    sizeFile = os.path.getsize(args.d + "\\" + line)
    print(f"{line} {sizeFile} bytes")



#UPPGIFT 4
#pathFolder = r"C:\\Users\\lillo\\Desktop\\SKOLARBETE\\NACKADEMIN\\ITS20 - Shell\\Python\\LabbFive\\massaGrejer\\appendering.txt"
#for line in range(10):
#    now = datetime.datetime.now()
#    strNow = str(now)
#    with open(pathFolder, "a") as txtFile:
#        txtFile.write(f"{strNow}\n")

#UPPGIFT 5
#Laptop
#pathFolder = r"C:\\Users\\lillo\\Desktop\\NACKADEMIN\\ITS20 - Shell\\Python\\LabbFive\\massaGrejer\\appendering.txt"
#copyFolder = r"C:\\Users\\lillo\\Desktop\\NACKADEMIN\\ITS20 - Shell\\Python\\LabbFive\\ForCopyMeasures"
##Desktop
#pathFolder = r"D:\\SKOLARBETE\\NACKADEMIN\\ITS20 - Shell\\Python\\LabbFive\\massaGrejer\\appendering.txt"
#copyFolder = r"D:\\SKOLARBETE\\NACKADEMIN\\ITS20 - Shell\\Python\\LabbFive\\ForCopyMeasures"
#if len(os.listdir(copyFolder)) == 0:
#    shutil.copy(pathFolder, copyFolder)
#else:
    #desktop
    #renamePath = r"D:\\SKOLARBETE\\NACKADEMIN\\ITS20 - Shell\\Python\\LabbFive\\ForCopyMeasures\\appendering.txt"
    #Laptop
    #renamePath = r"C:\\Users\\lillo\\Desktop\\NACKADEMIN\\ITS20 - Shell\\Python\\LabbFive\\ForCopyMeasures\\appendering.txt"
#    i = len(os.listdir(copyFolder))
#    dstPathNew = copyFolder + f"\\appendering({i}).txt"
#    os.rename(renamePath, dstPathNew)
#    shutil.copy(pathFolder, copyFolder)
    
    
#Exempel File Creation
#path = r"D:\\SKOLARBETE\\NACKADEMIN\\ITS20 - Shell\\Python\\LabbFive\\massaGrejer"
#pathFiles = os.listdir(path)
#
#for line in pathFiles:
#    modifiedFile = time.ctime(os.path.getctime(f"{path}\\{line}"))
#    createdFile = time.ctime(os.path.getmtime(f"{path}\\{line}"))
#    print(f"{line}:")
#    print(f"Last modified: {modifiedFile}")
#    print(f"Created: {createdFile}\n")