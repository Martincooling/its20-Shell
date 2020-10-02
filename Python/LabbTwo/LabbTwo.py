#UPPGIFT 1
#userInput = input('Mata in ett tal :)')
#numberConverted = int(userInput)
#
#if numberConverted > 10:
#    print("Talet är större")
#else:
#    print('talet är mindre')

#UPPGIFT 2
#userInput = input('Mata in ett tal :)')
#numberConverted = int(userInput)
#
#if numberConverted < 10:
#    print('Beställ 10 paket')
#elif numberConverted > 9 and numberConverted < 21:
#    print('Beställ 20 paket')
#else:
#    print('Du behöver inte :)')

#UPPGIFT 3
#userInput = input('Har du feber? Skriv in tempen här :)')
#numberInput = float(userInput)
#
#if numberInput > 37.8 and numberInput < 39.5:
#    print("you got sick :)")
#elif numberInput > 39.5:
#    print("Go get a doctor D:")
#else:
#    print("Du har inte feber :9")

#UPPGIFT 4
#userInput = input("Hur gammal är du? ")
#try:
#    numberConvert = int(userInput)
#except (ValueError, TypeError):
#    print('Dont be that guy')
#    exit()
#
#if numberConvert < 18:
#    print("Du är inte myndig")
#elif numberConvert > 65:
#    print("du är pensionär")
#else:
#    print('Du är myndig')

#UPPGIFT 5
#userInput = input('Vilken kategori tillhör du?\nStudent, Pensionär, Vuxen\n')
#
#if userInput == "Vuxen" or userInput == "vuxen":
#    print('Det kostar 30kr')
#elif userInput == "Student" or userInput == "student" or userInput == "Pensionär" or userInput == "pensionär":
#    print('Det kostar 20kr')
#else:
#    print("Felaktig kategori :9")

#UPPGIFT 6
#registeredLogin = "Gangster92"
#registeredPw = "123"
#
#userLogin = input("Skriv in ditt användarnamn\n")
#userPw = input("Skriv in ditt lösenord\n")
#
#if userLogin == registeredLogin and userPw == registeredPw:
#    print("Du har loggat in :)")
#else:
#    print("felaktig inloggning")

#UPPGIFT 7
userInput = input("Vilket land bor du i? :)\nOBS: Va case-sensetive och på svenska please :)\n")

if userInput == "Danmark" or userInput == "Norge" or userInput == "Sverige":
    print("Du bor i skandinavien")
else:
    print("Du bor inte i skandinavien")

