# 004 Jars for Joy

## What is this?

This is the fourth tutorial in the Java Compiling series and its intent is to get you familiar with how Java Archive files or JARs work. 

## Why make this?

Because understanding JARs is necessary to be a capable Java developer.

## How do I use this?

Read parts A and B and run the `run.sh` script for each scenario provided (remember to `clean` up after yourself)

## Whoa this tutorial is different! What's up?

Glad you noticed! Yes, this tutorial tackles two common aspects of JAR files: 
- The creation of a library/dependency as a JAR 
- The creation of an application as a JAR

The best way to understand this relationship is by reading and executing the exercises in part A and then building on those concepts in part B.

## Final thoughts

- There are an awful lot of absolute paths, is that strictly needed?
- The classpath used by a JAR is designated by a property in the Manifest `Class-Path` which lives inside the JAR and contains the full path to the   