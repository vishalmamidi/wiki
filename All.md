# java-questions.md


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








# java-collections.md
## List Set Queue Map

java.lang.Iterable (`interface`)
└── java.util.Collection (`interface`)
    ├── java.util.List (`interface`)
    │   ├── java.util.ArrayList (`class`)
    │   ├── java.util.LinkedList (`class`)
    │   ├── java.util.Vector (`class`)
    │   │   └── java.util.Stack (`class`)
    │   └── java.util.concurrent.CopyOnWriteArrayList (`class`) *(Thread-safe)*
    │
    ├── java.util.Set (`interface`)
    │   ├── java.util.HashSet (`class`)
    │   │   └── java.util.LinkedHashSet (`class`)
    │   ├── java.util.SortedSet (`interface`)
    │   │   └── java.util.NavigableSet (`interface`)
    │   │       └── java.util.TreeSet (`class`)
    │   └── java.util.concurrent.CopyOnWriteArraySet (`class`) *(Thread-safe)*
    │
    └── java.util.Queue (`interface`)
        ├── java.util.PriorityQueue (`class`)
        ├── java.util.Deque (`interface`)
        │   ├── java.util.ArrayDeque (`class`)
        │   └── java.util.LinkedList (`class`) *(Also implements List)*
        └── java.util.concurrent.BlockingQueue (`interface`) *(Thread-safe)*
            ├── java.util.concurrent.ArrayBlockingQueue (`class`)
            ├── java.util.concurrent.PriorityBlockingQueue (`class`)
            └── java.util.concurrent.LinkedBlockingQueue (`class`)

java.util.Map (`interface`) *(Separate from Collection)*
├── java.util.HashMap (`class`)
│   └── java.util.LinkedHashMap (`class`)
├── java.util.Hashtable (`class`) *(Thread-safe)*
├── java.util.WeakHashMap (`class`)
├── java.util.SortedMap (`interface`)
│   └── java.util.NavigableMap (`interface`)
│       └── java.util.TreeMap (`class`)
└── java.util.concurrent.ConcurrentMap (`interface`) *(Thread-safe)*
    ├── java.util.concurrent.ConcurrentHashMap (`class`)
    └── java.util.concurrent.ConcurrentSkipListMap (`class`)

## Utility Classes
- `java.util.Collections` (class)
- `java.util.Arrays` (class)


────────────────────────────────────────────────────────────────────────────────


#### Q: What is the Java Collection Framework?  
**A:** A set of interfaces and classes in Java (`java.util` package) to store and manipulate groups of objects (e.g., `List`, `Set`, `Map`).

---

#### Q: What's the difference between `List` and `Set`?  
**A:**  
- `List`: Ordered collection that allows duplicates (e.g., `ArrayList`)  
- `Set`: Unordered collection that doesn't allow duplicates (e.g., `HashSet`)

---

#### Q: Why doesn't `Map` extend `Collection`?  
**A:** Because `Map` stores key-value pairs while `Collection` stores individual elements.

---

#### Q: When should I use `ArrayList` vs `LinkedList`?  
**A:**  
- Use `ArrayList` for frequent reads (faster random access)  
- Use `LinkedList` for frequent insertions/deletions (especially at ends)

---

#### Q: How is `HashMap` different from `HashTable`?  
**A:**  
- `HashMap`: Faster, allows one `null` key, not thread-safe  
- `HashTable`: Thread-safe (synchronized), no `null` keys/values (legacy)

---

#### Q: How does `HashSet` store elements internally?  
**A:** It uses a `HashMap` internally where elements become keys and a dummy object (`PRESENT`) is the value.

---

#### Q: What's the difference between fail-fast and fail-safe iterators?  
**A:**  
- Fail-fast: Throws `ConcurrentModificationException` if modified during iteration (e.g., `ArrayList`)  
- Fail-safe: Doesn't throw exceptions (e.g., `ConcurrentHashMap`)

---

#### Q: How do `Comparable` and `Comparator` differ?  
**A:**  
- `Comparable`: Defines natural ordering (`compareTo()` method in the class)  
- `Comparator`: External class for custom ordering (`compare()` method)

---

#### Q: Why is `String` commonly used as a `HashMap` key?  
**A:** Because it's immutable (hashcode can't change) and properly implements `equals()` and `hashCode()`.

---

#### Q: How can I make a collection read-only?  
**A:** Use `Collections.unmodifiableList()` (or similar methods for `Set`/`Map`).

---

#### Q: What is a `TreeMap` and how does it sort entries?  
**A:** A sorted `Map` that maintains keys in natural order (or custom order via `Comparator`) using a Red-Black Tree.

---

#### Q: When would I use `PriorityQueue`?  
**A:** When you need elements processed based on priority (always dequeues the highest-priority element first).

---

#### Q: How can I synchronize a `HashMap`?  
**A:** Wrap it with `Collections.synchronizedMap()`, but prefer `ConcurrentHashMap` for better performance.

---

#### Q: What makes `ConcurrentHashMap` thread-safe?  
**A:** It divides the map into segments, allowing multiple threads to read/write different segments concurrently.

---

#### Q: Should I use `ArrayDeque` or `LinkedList` for a queue?  
**A:**  
- `ArrayDeque`: Better performance for stack/queue operations  
- `LinkedList`: Better for frequent mid-list insertions/deletions

---

#### Q: What's the default capacity and load factor of `HashMap`?  
**A:** Default capacity is **16**, load factor is **0.75** (resizes when 75% full).

---

#### Q: How does `LinkedHashMap` differ from `HashMap`?  
**A:** `LinkedHashMap` maintains insertion order (or access order) using a doubly-linked list.

---

#### Q: What's the time complexity of `HashMap` operations?  
**A:** O(1) average case for `get()`/`put()`, but O(n) worst-case (due to collisions).

---

#### Q: How does `TreeSet` check for duplicates?  
**A:** It uses `TreeMap` internally and checks duplicates via `compareTo()`/`compare()` (not `equals()`).

---

#### Q: What's the difference between `poll()` and `remove()` in `Queue`?  
**A:**  
- `poll()`: Returns `null` if queue is empty  
- `remove()`: Throws `NoSuchElementException` if queue is empty


# Me.md


# java.md
## INTRO 

### Reactive programming
Reactive Programming is design pattern that focuses on using async and non blocking data streams to handle data and events. 


 Abstraction 
Hiding the implementation details and showing only functionality to the user 

#### Abstract class
To achive Abstraction we use abstract class but it it partial abstraction 

#### interfaces
 interfaces are blueprints, they define methods but not the implementation. helpfull in Multiple inheritance, clear contracts 

**can we connect to 2 differnet Database in spring boot**
Yes 
Define separate configurations for each database connection in your application.yml
Create JPA Repositories interfaces



https://www.youtube.com/watch?v=aW68FHrLAmA

### spirng boot 

module of spring framework enalbes for rapid applaiction developement 
by simpliying configuration, setup process, dependency management, embeded server (tomcat, jetty, netty)


### starter projects 
spring boot starter web, spring boot starter webflux, spring-boot-starter-data-jpa, spring-boot-starter-test, spring-boot-starter-acutator 

### why spring boot over spring 
easy to use , rapid application developement , auto configuration ,dependency management, embeded server


### annoatations 
SpringBootAppliaciton, Configuration, ComponentScan, EnableAutoConfiguration, 

#### @Component
mark a class as spring bean, which can be managed by spring container ConfigurationApplicationContext  

#### @Autowired
automatically inject dependencys of one class into another class 

#### @Service
mark a class as a service component to write some business logic 

#### @RestController (includes @Controller @ResponceBody )
to create REST API we use RestController annotation so it can return json responces to that endpoints.

#### @Controller 

#### RequestMapping
#### Repository 
DB Logic 

#### thymeleaf 
java service side template engine 


### IOC  inversion of control
manages ojbjects in spring 

### bean
simple plane java object in spring tearm which is managed by spring container(IOC Container) 

### spring bean lifecycle 

container start --> bean create --> dependency create --> dependency inject --> destroy

### 


# All.md


# java-8-features.md
# Java 8 Features - Questions and Answers

## Q1: What is the purpose of Lambda Expressions in Java 8?
**A:** Lambda Expressions provide a clear and concise way to represent a single method interface using an expression. They enable functional programming and reduce boilerplate code.

---

## Q2: What is a Functional Interface in Java 8?
**A:** A Functional Interface is an interface with exactly one abstract method. It can be represented using a lambda expression. Examples include `Runnable`, `Callable`, and `Comparator`.

---

## Q3: What is the Stream API in Java 8?
**A:** The Stream API is used to process collections of data in a functional style. It supports operations like filtering, mapping, and reducing, making it easier to work with collections.

---

## Q4: What is the purpose of the `Optional` class in Java 8?
**A:** The `Optional` class is used to handle null values gracefully and avoid `NullPointerException`. It provides methods like `isPresent()`, `orElse()`, and `ifPresent()`.

---

## Q5: What are Default Methods in Java 8?
**A:** Default Methods allow interfaces to have method implementations. This helps in adding new methods to interfaces without breaking existing implementations.

---

## Q6: What is the new Date and Time API in Java 8?
**A:** Java 8 introduced a new Date and Time API in the `java.time` package. It provides classes like `LocalDate`, `LocalTime`, and `LocalDateTime` for easier and more robust date-time manipulation.

---

## Q7: What is the purpose of the `forEach` method in Java 8?
**A:** The `forEach` method is used to iterate over elements in a collection. It is a part of the `Iterable` interface and is often used with lambda expressions.

---

## Q8: What are Method References in Java 8?
**A:** Method References are a shorthand notation of a lambda expression to call a method. They are represented using the `::` operator.

---

## Q9: What is the significance of the `Collectors` class in Java 8?
**A:** The `Collectors` class provides utility methods for collecting stream elements into collections like lists, sets, or maps. It also supports aggregation operations like grouping and partitioning.

---

## Q10: What are the main benefits of Java 8 features?
**A:** Java 8 features improve code readability, enable functional programming, reduce boilerplate code, and provide better tools for handling collections and date-time operations.


# k8s.md
https://www.geeksforgeeks.org/kubernetes-interview-questions/

Kube-apiserver
master node - worker node 
node - smallet unit of compuring hardware
kube-scheduler
The Google Container Engine
Daemon sets
Heapster
initial namespaces ( defaut public system )
Kubernetes controller manager
types of controller managers ( endpoints controller, service accounts controller, 
  namespace controller, node controller, token controller, and replication controller )
etcd 
services in Kubernetes
Ingress
replica set and a replication controller
headless service
federated clusters
Kubelet
Kube-proxy
HPA
StatefulSet and a Deployment
Service in Kubernetes
configmaps
Persistent Volume (PV)
DaemonSet and a ReplicaSet
 Custom Resources in Kubernetes
  Taints and Tolerations
  Kubernetes control plane
  





