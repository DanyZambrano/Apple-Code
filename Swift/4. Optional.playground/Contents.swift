import UIKit


//********************
//     Optional
//********************

/*
 Technically, optional is just a type in Swift.
 
 This type indicates that the variable can have a value or no value.
 To declare a variable as an optional, you indicate it by appending a question mark ( ? )
 
 Different programming languages have different strategies to encourage programmers to write good code or less-error-prone
 code. The introduction of Optionals is Swift's way to help programmers write better code, thus prevent app crashes.
*/


var jobTitle: String?




//********************
// Forced Unwrapping
//********************

/*
an exclamation mark ( ! ) to the end of the optional variable. This exclamation mark is a special indicator,
telling Xcode that you ensure the optional variable has a value, and it is safe to use it.
 */

if jobTitle != nil {
    var message = "Your job title is " + jobTitle!
    print(message)
}




//********************
// Optional Binding
//********************

/*
 The other way is called optional binding, and it is the recommended way to work with optionals.
 At least, you do not need to use ! .
 
 Variable will be assigned with nil if doesn't have a value for the key.
*/

if let jobTitleWithValue = jobTitle {
    var message = "Your job title is " + jobTitleWithValue
    print(message)
}


if let jobTitle = jobTitle {
    var message = "Your job title is " + jobTitle
    print(message)
}


