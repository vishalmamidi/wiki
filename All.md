# java-questions.md


### Q: What is an interface in Java?
**A**: An interface is a blueprint with abstract methods and constants. It achieves full abstraction and supports multiple inheritance.

### Q: What are the key features of an interface?
**A**: Methods are `public abstract`, and fields are `public static final`.

### Q: What is an abstract class in Java?
**A**: An abstract class is a class that can have both abstract and concrete methods. It provides shared functionality and partial abstraction.

### Q: What are the key features of an abstract class?
**A**: It can have constructors, fields, and methods with any access modifier.

### Q: When should you use an interface?
**A**: Use an interface for unrelated classes or when multiple inheritance is needed.

### Q: When should you use an abstract class?
**A**: Use an abstract class for related classes with shared behavior.

### Q: What is the purpose of an interface?
**A**: An interface defines a contract.

### Q: What is the purpose of an abstract class?
**A**: An abstract class provides a base with shared structure.

### Q: Can we achieve full abstraction with abstract classes by adding only abstract methods?
**A**: Technically, yes. Generally we dont do because main reason to use an abstract class to provide some common implementation (concrete methods)

# README.md
# docs

this repo is used for my prep questions

# java.md
## INTRO 

### Reactive programming
Reactive Programming is design pattern that focuses on using async and non blocking data streams to handle data and events. 


#### Abstraction 
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
  





