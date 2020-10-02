import os

path = r"C:\\Users\\lillo\\Desktop\\SKOLARBETE\\NACKADEMIN\\ITS20 - Shell\\Python\\LabbFive\\massaGrejer"
listDir = os.listdir(path)
for line in listDir:
    result = line.endswith(".txt")
    if result:
        print(line)