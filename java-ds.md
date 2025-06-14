## List Set Queue Map
```
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
```

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

#### Q: `HashMap` vs `LinkedHashMap` vs `TreeMap`  
**A:** HashMap: no insertion order - LinkedHashMap: maintains insertion order - TreeMap: keeps values sorted

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
