

#### Q: What is an interface in Java?
**A**: An interface is a blueprint with abstract methods and constants. It achieves full abstraction and supports multiple inheritance.

#### Q: What are the key features of an interface?
**A**: Methods are `public abstract`, and fields are `public static final`.

#### Q: What is an abstract class in Java?
**A**: An abstract class is a class that can have both abstract and concrete methods. It provides shared functionality and partial abstraction.

#### Q: What are the key features of an abstract class?
**A**: It can have constructors, fields, and methods with any access modifier.

#### Q: When should you use an interface?
**A**: Use an interface for unrelated classes or when multiple inheritance is needed.

#### Q: When should you use an abstract class?
**A**: Use an abstract class for related classes with shared behavior.

#### Q: What is the purpose of an interface?
**A**: An interface defines a contract.

#### Q: What is the purpose of an abstract class?
**A**: An abstract class provides a base with shared structure.

#### Q: Can we achieve full abstraction with abstract classes by adding only abstract methods?
**A**: Technically, yes. Generally we dont do because main reason to use an abstract class to provide some common implementation (concrete methods)


#### Q: constructor overloading
**A:** Having multiple constructors in a class with different parameter lists.

#### Q: Can overloaded constructors have different return types?
**A:** No, constructors don’t have return types.

main method be Overloaded?
Yes but JVM only call one with `public static void main(string[] args)`

#### Q: `final` Variable
* The value of a final variable cannot be changed after it is assigned.
* It must be initialized either when declared or within a constructor.

#### Q: `final` Method
* Method's implementation remains consistent across all subclasses.
* We cannot override final method in subclasses (child)
 
#### Q: `final` Class
* Prevents a class from having subclassed (child)(inherited).






