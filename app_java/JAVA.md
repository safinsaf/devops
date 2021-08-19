# Best practices 
## 1. Why Spring Boot? 
* **Autoconfiguration**: Applications are initialized with pre-set dependencies that you don't have to configure manually.

* **An opinionated approach to configuration**: Spring Boot chooses which packages to install and which default values to use, rather than requiring you to make all those decisions yourself and set up everything manually.
* **The ability to create standalone applications**: You can launch your application on any platform by simply hitting the Run command. (Or building and running your app by 2 commands that provided in the end of document)
* **Intuitive**: Great editor support. Completion everywhere. Less time debugging.
* **Provision to run the jars independently**: Allows running the app using java only.


## 2. CheckStyle-IDEA
This plugin provides both real-time and on-demand scanning of Java files with CheckStyle from within IDEA.
* **Real-time scaning of Java files** The plugin provides real-time scanning from within Intellij Idea. Warnings and errors can be found  in **Problems** section. 
* **On-demand scanning of Java files** The plugin provides On-demand scanning from within Intellij Idea.
* ****

## How to run
```bash
./mvnw install
java -jar target/compiled_jar_file.jar # jar file is created in target
																			 # directory by previous command
```