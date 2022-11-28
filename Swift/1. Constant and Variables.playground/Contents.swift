import UIKit

//********************
//      Types
//********************
let myConstant = 1
var myVarible = 2



//********************
//      Double
//********************
var number: Double = 10.5



//********************
//      String
//********************
var myMessage = "The best way to get started is to stop talking and code."

var greeting = "Hello "
var name = "Dany"
var message = greeting + name
message.count
message.uppercased()
message.lowercased()



//********************
//   Interpolation
//********************
var bookPrice = 39
var numOfCopies = 5
var totalPrice = bookPrice * numOfCopies
var totalPriceMessage = "The price of the book is $ \(totalPrice)"
