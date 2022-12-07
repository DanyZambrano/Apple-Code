## Protocol Oriented Programming


> In brief, protocol-oriented programming emphasizes coding to protocols, instead of specific classes, structs or enums. It does this by breaking the old rules of protocols and allowing you to write implementations for protocols on the protocols themselves.

</br>

You can define a protocol extension using the following syntax:

</br>

```
protocol TeamRecord {
  var wins: Int { get }
  var losses: Int { get }
  var winningPercentage: Double { get }
}

extension TeamRecord {
  var gamesPlayed: Int {
    wins + losses
  }
}
```

</br>

## Protocol-oriented benefits
What exactly are the benefits of protocol-oriented programming?


Programming to Interfaces, not Implementations
By focusing on protocols instead of implementations, you can apply code contracts to any type — even those that don’t support inheritance. Suppose you were to implement TeamRecord as a base class.

</br>

```
class TeamRecordBase {
  var wins = 0
  var losses = 0

  var winningPercentage: Double {
    Double(wins) / Double(wins + losses)
  }
}

// Will not compile: inheritance is only possible with classes.
struct BaseballRecord: TeamRecordBase {
}
```

</br>

Protocol extensions significantly affect your ability to write expressive and decoupled code — and the Swift language itself uses protocol extensions extensively.

To begin with, you can contrast protocol-oriented programming with object-oriented programming. The latter focuses on the idea of mutable objects and how objects interact. Because of this, the class is at the center of any object-oriented language.

Though classes are a part of Swift, you’ll find they are an extremely small part of the standard library. Instead, the Swift standard library is value types (or types with value semantics) that conform to protocols. You can see the significance of this in many of Swift’s core types, such as Int and Array.