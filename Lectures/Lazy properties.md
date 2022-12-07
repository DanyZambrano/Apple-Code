## Lazy properties


> If you have a property that might take some time to calculate, you don’t want to slow things down until you actually need the property. Say hello to the lazy stored property. It is useful for such things as downloading a user’s profile picture or making a serious calculation.


</br>


```
struct Circle {
  lazy var pi = {
    ((4.0 * atan(1.0 / 5.0)) - atan(1.0 / 239.0)) * 4.0
  }()
  var radius = 0.0
  var circumference: Double {
    mutating get {
      pi * radius * 2
    }
  }
  init(radius: Double) {
    self.radius = radius
  }
}

var circle = Circle(radius: 5) // got a circle, pi has not been run

```

</br>


But since pi is marked as lazy, this calculation is postponed until the first time you access the property.


</br>


