import UIKit


//********************
//     If-Else
//********************
var timeYouWakeUp = 6
if timeYouWakeUp == 6 {
    print("Cook yourself a big breakfast!")
} else {
    print("Go out for breakfast")
}



var bonus = 5000
if bonus >= 10000 {
    print("I will travel to Paris and London!")
} else if bonus >= 5000 && bonus < 10000 {
    print("I will travel to Tokyo")
} else if bonus >= 1000 && bonus < 5000 {
    print("I will travel to Bangkok")
} else {
    print("Just stay home")
}





//********************
//     Switch
//********************
var timeYouWake = 6
switch timeYouWake {
case 6:
    print("Cook yourself a big breakfast!")
default:
    print("Go out for breakfast")
}



var bonusx = 5000
switch bonusx {
case 10000...:
    print("I will travel to Paris and London!")
case 5000...9999:
    print("I will travel to Tokyo")
case 1000...4999:
    print("I will travel to Bangkok")
default:
    print("Just stay home")
}
