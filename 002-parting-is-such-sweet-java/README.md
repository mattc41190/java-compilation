# 002 Parting is Such Sweet Java 

## What is this?

This is the second tutorial in the Java Compiling series and its intent is to teach you how items in other directories can be run in Java.

## Why make this?

Because I fel that the `001-hello-java` project had enough content already and I wanted to discuss multiple directories in "unpackaged" land before moving into packages which have enough trouble without needing to explain the compilation of classes in other directories. 

## How do I use this?

- Read the code (2 very simple java files)
- Look at the compile and run commands in the `run.sh <arg>` file.
    - Read the comments in this file to understand why some scenarios pass and others fail

## Notes on this exercise:

- The code is essentially the same code that was used in the first exercise with the exception that it is broken into multiple directories. This is often a required aspect in code organization, but it can be a real beast to keep up with.
- When you need to compile items sequentially you must ensure that the classpath for compilation is respected. This means that dependents must have their dependencies available in the classpath (recall from the first exercise that the current directory is the default classpath). The methods for doing this are covered in the `run.sh` notes. 