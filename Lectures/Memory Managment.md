## Memory Managment


</br>

## Weak references
Weak references are references that don’t play any role in the ownership of an object. The great thing about using them is that they automatically detect when the underlying object has gone away. This automatic detection is why you always declare them with an optional type. They become nil once the reference count reaches zero.

```
weak var editor: Editor?
```

</br>

## Unowned references
You have another means to break reference cycles: Unowned references, which behave much like weak ones in that they don’t change the object’s reference count.

Unlike weak references, however, they always expect to have a value — you can’t declare them as optionals.