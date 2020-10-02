import os
import time as Thread

#UPPGIFT 1
#numberOne = int(input('Type in a number :)'))
#numberTwo = int(input('Type in another number :)'))
#highNum = max(numberOne, numberTwo)
#minNum = min(numberOne, numberTwo)
#
#for line in range(minNum+1, highNum):
#    print(line, end=" | ", flush=True)

#UPPGIFT 2
#while True:
#    os.system('cls')
#    userInputOne = int(input("Skriv ett tal :)\n"))
#    userInputTwo = int(input("Skriv ett tal igen :)\n"))
#    Sum = userInputOne + userInputTwo
#    print(Sum)
#
#    userAnswer = input('Vill du fortsätta? (J/N)')
#    if userAnswer == "J" or userAnswer == "j":
#        continue
#    elif userAnswer == "N" or userAnswer == "n":
#        print('Ok bye closing program in 3...')
#    else:
#        print('I am just going to assume that was a no :)\nClosing in 3...')
#    Thread.sleep(3)
#    break

#UPPGIFT 3 - 5
numList = []  #We declare the list outside of the while loop so it doesnt get reset
while True: #Makes an infinite loop
    tempNum = int(input("Mata in ett tal\n"))

    if tempNum == 0:
        break
    else:
        numList.append(tempNum) #Lägger in user input i listan
        if len(numList) == 1: 
            medelVarde = numList[0]/1
        elif len(numList) == 2:
            medelVarde = sum(numList)/2
        else:
            medelVarde = numList[-3]/3 #Medevärdet blir summan/antal
        print("Summan är: ", sum(numList))
        print("Medelvärdet för 3 senaste är: ", medelVarde) #Output
