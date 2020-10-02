import os #Main thing for moving files etc can use cmd
import datetime #for dates
import argparse #For parsing -f and -d in parameter
import shutil #For copying

#USE CMD
parser = argparse.ArgumentParser(description="Allmän programhjälp")
parser.add_argument("-f", type=str, help="Ange filter") #-f filter
args = parser.parse_args()
#-h för hjälp sektionen
logPath = r"D:\\SKOLARBETE\\NACKADEMIN\\ITS20 - Shell\\Python\\RemoveCertainFiles\\RemoveScript.txt"
cleanPath = r"D:\\SKOLARBETE\\NACKADEMIN\\ITS20 - Shell\\Python\\RemoveCertainFiles\\Logs"

file = os.listdir(cleanPath)

for line in file:
    if line.endswith(f"{args.f}") == False:
        #DET FINNS line.startswith("text")
        os.remove(fr"{cleanPath}\\{line}")
        dateNow = datetime.datetime.now()
        dateNowStr = dateNow.strftime("%Y-%m-%d %H:%M:%S")
        with open(logPath, "a") as f:
            f.write(f"{dateNowStr} Filen {line} har tagits bort.\n")
            
print ('Cleaner is done :)')
userInput = input("Do you want to get all the files back (practical reasons)\n[Y/N]\n")
if userInput.upper() == "Y":
    #Automated Copy from backup to root :)
    backupPath = r"D:\\SKOLARBETE\\NACKADEMIN\\ITS20 - Shell\\Python\\RemoveCertainFiles\\Backup"
    backupFile = os.listdir(backupPath)
    for liner in backupFile:
        if os.path.isdir(cleanPath):
            logPath = os.path.join(cleanPath, os.path.basename(backupPath + "\\" + liner))
        shutil.copy(backupPath + "\\" + liner,cleanPath)
    print("Files copied.")
elif userInput.upper() == "N":
    print("No files copied.")
    
#Lägg till :)
#OM STORLEKEN ÄR ÖVER 100 BYTES SÅ TAS DET BORT OCH SÄG VILKEN FIL DET VAR: =)    