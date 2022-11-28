import UIKit


//********************
//     Array
//********************
var book1 = "Tools of Titans"
var book2 = "Rework"
var book3 = "Your Move"

var bookCollection = ["Tool of Titans", "Rework", "Your Move"]

bookCollection[0]
bookCollection.append("Authority")
bookCollection.count

print(bookCollection)

for index in 0...3 {
    print(bookCollection[index])
}

for index in 0...bookCollection.count - 1 {
    print(bookCollection[index])
}

for book in bookCollection {
    print(book)
}




//********************
//     Dictionary
//********************
var bookCollectionDict = ["1328683788": "Tool of Titans", "0307463745": "Rework", "1612060919": "Authority"]
for (key, value) in bookCollectionDict {
    print("ISBN: \(key)")
    print("Title: \(value)")
}
