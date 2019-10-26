# This is the application compile and runner script.
# Read the comments in this file to understand what's occuring.

# Introduction...

# NOTE: Before running any option run `sh run.sh clean` to ensure cleanliness

case "$1" in
        # The `clean` command cleans the durrent directory of build artifacts
        # Anything past this and globstar (bash4) may be required.
        clean)
            rm -f *.class
            rm -f com/matthewcale/*.class
            rm -f com/circus/cotton_candy/*.class
            rm -f com/circus/peanut/*.class
            rm -rf bin
            ;;
        # The `basic_run` command runs the java compile command and then executes the classes using the brute force method of
        # adding everything to the classpath individually.
        basic_run)
            javac \
                -sourcepath .:com/circus/cotton_candy:com/circus/peanut \
                com/matthewcale/App.java
            java -classpath .:com.circus.cotton_candy.CottonCandy:com.circus.peanut.Peanut \
                com.matthewcale.App
            ;;
        # The `dir_run` command runs the java compile command and then executes the classes using the cleaner method of 
        # grouping together items in the classpath for compilation and placing them into a Java consumable directory struture
        # based on their package names.
        # Note: recall from the `javac` documentation: "If a class is part of a package, javac puts the class file in a 
        # subdirectory reflecting the package name, creating directories as needed"
        dir_run)
            mkdir bin
            javac \
                -d bin \
                -classpath .:com/circus/cotton_candy:com/circus/peanut \
                com/matthewcale/App.java
            java -classpath ./bin com.matthewcale.App
            ;;
esac

