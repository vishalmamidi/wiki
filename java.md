## INTRO 

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
