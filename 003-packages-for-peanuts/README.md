# 003 Packages For Peanuts

## What is this?

This is the third tutorial in the Java Compiling series and its intent is to teach you how packages are intended to work within the scope of your Java application.

## Why make this?

Because packages are an essential part of running Java successfully.

## How do I use this?

- Read the code
- Look at the compile and run commands in the `run.sh <arg>` file.
    - Read the comments in this file to understand why some scenarios pass and others fail

## Notes on this exercise:

- The code structure in this lesson deviates seriously from the earlier lessons.
- There are three distinct packages `com.matthewcale`, `com.circus.peanuts`, and `com.circus.cotton_candy` which reside in the root directory.
- From `javac` documentation: "If a class is part of a package, `javac` puts the class file in a subdirectory reflecting the package name, creating directories as needed"
- [Read this over and over](https://docs.oracle.com/javase/7/docs/technotes/tools/windows/classpath.html#Understanding)
- Largely speaking once you understand the directory structure rules for classpath adding in the additional complexity of the package naming convention is not entirely too heavy. 
 