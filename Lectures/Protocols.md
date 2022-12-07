## Protocols


> Unlike the other named types, protocols don’t define anything you instantiate directly. Instead, they define an interface or blueprint that actual concrete types conform to. With a protocol, you define a common set of properties and behaviors that concrete types go and implement.

> The keyword protocol is followed by the name of the protocol, followed by the curly braces with the members of the protocol inside. The big difference you’ll notice is that the protocol doesn’t contain any implementation. That means you can’t instantiate a Vehicle directly.

> A class can only inherit from a single class — this is the property of “single inheritance”. In contrast, a class (struct or enum) can be made to conform to as many protocols as you’d like!

</br>

```
protocol Vehicle {
  func accelerate()
  func stop()
}
```

</br>

## Protocols in the Standard Library
The Swift standard library uses protocols extensively in ways that may surprise you. Understanding the roles protocols play in Swift can help you write clean, decoupled “Swifty” code.

</br>

## Protocol syntax

A protocol can be adopted by a class, struct or enum — and when another type adopts a protocol, it’s required to implement the methods and properties defined in the protocol. Once a type implements all members of a protocol, the type is said to conform to the protocol.

</br>

```
class Unicycle: Vehicle {
  var peddling = false

  func accelerate() {
    peddling = true
  }

  func stop() {
    peddling = false
  }
}
```
</br>

> You follow the name of the named type with a colon and the name of the protocol you want to conform to. This syntax might look familiar since it’s the same syntax you use to make a class inherit from another class.

</br>

## Methods in protocols

```
enum Direction {
  case left
  case right
}

protocol DirectionalVehicle {
  func accelerate()
  func stop()
  func turn(_ direction: Direction)
  func description() -> String
}
```

</br>

```
protocol Wheeled {
  var numberOfWheels: Int { get }
  var wheelSize: Double { get set }
}

class Bike: Vehicle, Wheeled {
  // Implement both Vehicle and Wheeled
}
```