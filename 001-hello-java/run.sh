# This is the application compile and runner script.
# Read the comments in this file to understand what's occuring.

# This is the simplest form of compiling and running useful Java projects. Certain projects will only ever need this. 
# When you understand this file you are capable of running anything that depends on the core Java 
# libraries, and your own unpackaged code in a single directory (multiple directories are covered in section 002).

# NOTE: Before running any option run `sh run.sh clean` to ensure cleanliness

case "$1" in
        # The `clean` command cleans the durrent directory of build artifacts
        clean)
            rm -f *.class
            rm -rf bin
            ;;
        # The `basic_run` command runs the java compile command and then executes the class
        # Note: There is no `package` in this class. There is no class path set here
        basic_run)
            javac App.java
            java App
            ;;
        # The `empty_cp_run` command will fail! It is intended to show the runner that by default
        # Java by default sets the classapth to the current directory. When we override this location 
        # the JRE is unable to find a class with a main method called "App"
        empty_cp_run)
            javac App.java
            java -classpath /dev App
            ;;
        # The `explicit_cp_run` command will set the class path to the current directory `.`
        # and then execute the class. 
        explicit_cp_run)
            javac App.java
            java -classpath . App Mike Sonny Vito Fredo
            ;;
        # The `set_dir_run` command will create a classes directory 
        # and then execute the class. 
        set_dir_run)
            mkdir bin
            javac -d bin App.java
            java -classpath ./bin App Mickey Donald Goofy Daisy Pluto
            ;;
esac

