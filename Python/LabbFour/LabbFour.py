import os
os.system('cls')

#UPPGIFT 1
#arrayNum = []
#while True:
#    tempInput = int(input("Mata in ett tal\n"))
#    arrayNum.append(tempInput)
#    
#    if len(arrayNum) == 4:
#        break
#    else:
#        continue
#for line in arrayNum:
#    print(line)

#UPPGIFT 2
#userChoice = int(input('Hur många mätningar ska registreras :)'))
#i = 0
#arrayTemp = []
#while True:
#    if i < userChoice:
#        userInput = float(input('Ange temperatur: '))
#        arrayTemp.append(userInput)
#        i = i + 1
#        continue
#    break
#
#for line in arrayTemp:
#    print(line, end=" | ", flush=True)
#
#print('\nMax-temp är: ', max(arrayTemp))
#medelVarde = sum(arrayTemp)/userChoice
#print('Medelvärdet är: ',medelVarde)

#UPPGIFT 3
#arrayPeople = []
#i = 1
#while True:
#    if i <= 5:
#        userChoice = input('Vill du mata in en till person? J/N\n')
#        if userChoice == "J":
#            personName = input('Vad heter personen?\n')
#            arrayPeople.append(personName)
#            i = i + 1
#            continue
#        elif userChoice == "N":
#            break
#    else:
#        print('Adding people done...\n')
#        break
#for line in arrayPeople:
#    print(line)

#UPPGIFT 4
#word = "c:\\hej\\test\\hello.txt"
#result = word.index("\\", 3)
#print ("Substring '\\ ' found at index:", result)
#if "hej" in word:
#  print("Ja")

#UPPGIFT 4 LITE BÄTTRE
word = '"c:\\hej\\test\\hello.txt"'
maxIndex = 0
for count, char in enumerate(word):
    #print(f"Nuvarande räknare: {count}, Nuvarande karaktär: {char}")
    if char == '"':
        maxIndex = count
print(maxIndex)

maxIndexForBackslash = 0
for x in range(len(word)-1, -1, -1):
    if word[x] == '\\':
        maxIndexForBackslash = x
        break
print("Den sista blackslashen förekommer på index", maxIndexForBackslash)

if "hej" in word.split("\\"):
    print("JA")


#UPPGIFT 5
#while True:    
#    userMail = input('Please enter your email: ')
#    if "@" in userMail and len(userMail) >= 2:
#        print("Valid email.")
#        break
#    else:
#        print('Invalid email please retry again.')
#        continue

#UPPGIFT 5 LITE BÄTTRE
#while True:
#    mail = input("E-post: ")
#    snabbelA = mail.find("@")
#    punkt = mail.rfind(".")+1
#
#    if snabbelA == -1 and punkt == -1:
#        print("wrong stop")
#        continue
#    else:
#        if len(mail[punkt:]) <= 3 and len(mail[punkt:]) >= 2:
#            print("ok")
#            break
#        else:
#            print("felaktig")
#            continue