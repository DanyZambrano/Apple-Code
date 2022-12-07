## Access Control


> Effectively, access control allows you to control the code’s accessible interface while defining whatever properties, methods or types you need to implement the behavior you want.

</br>

The private modifier used in the brief example above is one of several access modifiers available to you in Swift:

* **private**: Accessible only to the defining type, all nested types and extensions on that type within the same source file.
* **fileprivate**: Accessible from anywhere within the source file in which it’s defined.
* **internal**: Accessible from anywhere within the module in which it’s defined. This level is the default access level. If you don’t write anything, this is what you get.
* **public**: Accessible from anywhere that imports the module.
* **open**: The same as public, with the additional ability granted to override the code in another module.

