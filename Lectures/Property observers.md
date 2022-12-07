## Property observers


> A willSet observer is called when a property is about to be changed while a didSet observer is called after a property has been changed. Their syntax is similar to getters and setters:

> Note: Do not confuse property observers with getters and setters. A stored property can have a didSet and/or a willSet observer. A computed property has a getter and optionally a setter. These, even though the syntax is similar, are entirely different concepts!


</br>


willSet and didSet observers are only available for stored properties. If you want to listen for changes to a computed property, simply add the relevant code to the property’s setter.

Also, keep in mind that the willSet and didSet observers are not called when a property is set during initialization; they only get called when you assign a new value to a fully-initialized instance.

That means property observers are only useful for variable properties since constant properties are only set during initialization. Select between var and let accordingly to match your needs.

</br>


```
struct LightBulb {
  static let maxCurrent = 40
  var current = 0 {
    didSet {
      if current > LightBulb.maxCurrent {
        print("""
              Current is too high,
              falling back to previous setting.
              """)
        current = oldValue
      }
    }
  }
}

var light = LightBulb()
light.current = 50
light.current // 0
light.current = 40
light.current // 40

```
