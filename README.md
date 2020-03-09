# PathMatchingResourcePatternResolver issue demo

This repository contains a demo of the behavior described in [spring-projects/spring-framework#24480](https://github.com/spring-projects/spring-framework/issues/24480).

Run the files `demo-jar-cp.sh` and `demo-normal-cp.sh` to see the behavior.

The behavior can also be seen in IntelliJ IDEA, using the provided run configurations. You have to have JDKs with the name `"8"` and `"11.0.4"` defined in your IDEA project to be able to execute the run configurations.

## Description

When you execute the demo application with the class path passed in a JAR manifest (as can be configured in IDEA, or as is used by [Bazel](https://bazel.build/) tests or VisualStudio Code), the output is

```
Classpath: C:\Users\USERNAME\AppData\Local\Temp\classpath338005479.jar

[jar:file:/C:/Users/USERNAME/.m2/repository/junit/junit/4.12/junit-4.12.jar!/LICENSE-junit.txt]
[]
```

If you execute the application with a normal classpath (or with Java 9+ @argFiles), the output is

```
Classpath: C:\development\test\path-matching-resource-pattern-resolver-demo\target\classes;C:\Users\USERNAME\.m2\repository\org\springframework\spring-core\5.2.2.RELEASE\spring-core-5.2.2.RELEASE.jar;C:\Users\USERNAME\.m2\repository\org\springframework\spring-jcl\5.2.2.RELEASE\spring-jcl-5.2.2.RELEASE.jar;C:\Users\USERNAME\.m2\repository\junit\junit\4.12\junit-4.12.jar;C:\Users\USERNAME\.m2\repository\org\hamcrest\hamcrest-core\1.3\hamcrest-core-1.3.jar

[jar:file:/C:/Users/USERNAME/.m2/repository/junit/junit/4.12/junit-4.12.jar!/LICENSE-junit.txt]
[URL [jar:file:C:\Users\USERNAME\.m2\repository\junit\junit\4.12\junit-4.12.jar!/LICENSE-junit.txt]]
```

We would expect both outputs to be equal (except for the classpath).
