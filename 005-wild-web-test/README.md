# 005 Wild Web Test

## What is this?

This is the fifth tutorial in the Java Compiling series and its intent is to get you familiar with downloading and leveraging JARs downloaded form the internet 

## Why make this?

Because great developers all over the world are trying to help you make amazing software and its an honor to leverage the foundation that they've built for you. 

## How do I use this?

- Read the code
- Look at the compile and run commands in the `run.sh <arg>` file.
    - Read the comments in this file to understand why some scenarios pass and others fail


## Scenario 

You have started to develop a rather complicated application and need to write some tests. Instead of writing a test runner you have heard that someone on the internet has created a test runner. The path here is a little convoluted so let's talk about how the hierarchy here actually works.

- The actual artifact (maybe try thinking of it as the`src` artifact). In this case we have an item called `PhraseGenerator` this is our actual library.
- The test artifact (`PhraseGeneratorTest`) which contains test code that lives in the same package (but different directory) than the `src` artifact.
- The test runner. You may have noticed that neither our test class(es) nor our source class(es) contain a `main` method and as you have seen Java requires a Main class as an entry point. Think about the JUnit dependency as the runtime, you will still compile you classes, but when you invoke Java you will be invoking it again JUnit which has a [main](https://github.com/junit-team/junit4/blob/0e2d999c11e28369b5057c96fc7c20e162adee72/src/main/java/org/junit/runner/JUnitCore.java#L35-L38) method which will in turn require an input, in this case, your tests and the sources the tests depend on.

## What's Up With The Deps Directory?

We need a stable place to store JAR, in this exercise we will keep them in a directory called `deps`. These will not be viewed or really even modified, They will just hang out there.

## Sources

There is a site called Maven central where folks will often upload JARs that you can download for free.

- JUnit
	- https://search.maven.org/remotecontent?filepath=junit/junit/4.13-rc-2/junit-4.13-rc-2.jar
- Hamcrest
	- https://search.maven.org/remotecontent?filepath=org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar

## Resources

- https://github.com/junit-team/junit4/wiki/Getting-started