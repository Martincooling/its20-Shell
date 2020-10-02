import random

#UPPGIFT 10.1
#listNumber = []
#for line in range(2000, 3200):
#    if line % 7 == 0 and not line % 5 == 0:
#        listNumber.append(line)
#
#for number in listNumber:
#    print(number, end=',')


#UPPGIFT 10.2
li=[12,24,35,24,88,120,155,88,120,155]
newLi = []
for line in li:
    if line not in newLi:
        newLi.append(line)

for line in newLi:
    print(line, end=",")

#UPPGIFT 10.3 - Fortsätter med 10.4 #KOM TBX
#diceOne = random.randint(1,6)
#diceTwo = random.randint(1,6)
#diceThree = random.randint(1,6)
#
#if diceOne == diceTwo == diceThree:
#    print(f'tre {diceOne}')
#elif diceOne == diceTwo or diceOne == diceThree or diceTwo == diceThree:
#    if diceOne == diceTwo or diceOne == diceThree:
#        print(f'två {diceOne}')
#    elif diceTwo == diceThree:
#        print(f'två {diceTwo}')
#else:
#    print(f"en {diceOne},{diceTwo} och en {diceThree}")