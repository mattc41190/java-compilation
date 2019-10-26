# This is the application compile and runner script.
# Read the comments in this file to understand what's occuring.

# Packages in Java are a way to keep items logically seperated by namespaces. A package strcuture must reflect
# a directory structure! The `javac` tool will help with this undertaking.

# NOTE: Before running any option run `sh run.sh clean` to ensure cleanliness

case "$1" in
        # The `clean` command cleans the durrent directory of build artifacts
        # Anything past this and `globstar`, (the `**` glob available in bash v4) may be required.
        clean)
            rm -f *.class
            rm -f com/matthewcale/*.class
            rm -f com/circus/cotton_candy/*.class
            rm -f com/circus/peanut/*.class
            rm -rf bin
            ;;
        # The `basic_run` command runs the java compile command and then executes the classes using the brute force method of
        # adding everything to the classpath individually.
        # Note: The classpath may either be denoted by `.` or `/` when being invoked for `java` launch.
        # Example: .:com/circus/cotton_candy:com.circus.peanut
        # Note: The classpath may either contain the directory which contains the class you wish to leverage
        # or the class itself.
        # Example: com.circus.peanut.Peanut || com.circus.peanut
        basic_run)
            javac \
                -sourcepath .:com/circus/cotton_candy:com/circus/peanut \
                com/matthewcale/App.java
            java -classpath .:com.circus.cotton_candy:com.circus.peanut \
                com.matthewcale.App
            ;;
        # The `dir_run` command runs the java compile command and then executes the classes using the cleaner method of 
        # grouping together items in the classpath for compilation and placing them into a Java consumable directory struture
        # based on their package names.
        # Note: recall from `javac` documentation: "If a class is part of a package, javac puts the class file in a 
        # subdirectory reflecting the package name, creating directories as needed"
        dir_run)
            mkdir bin
            javac \
                -d bin \
                -sourcepath .:com/circus/cotton_candy:com/circus/peanut \
                com/matthewcale/App.java
            java -classpath ./bin com.matthewcale.App
            ;;
esac

