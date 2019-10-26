# This is the application compile and runner script.
# Read the comments in this file to understand what's occuring.

# Multiple directories in Java is a difficult item to handle without extra tools and packages. It is however
# quite possible to do and this lesson will provide you with enough data to get going in the right direction.

# NOTE: Before running any option run `sh run.sh clean` to ensure cleanliness

case "$1" in
        # The `clean` command cleans the durrent directory of build artifacts
        clean)
            rm -f *.class
            rm -f parters/*.class
            rm -rf bin
            ;;
        # The `basic_run` command runs the java compile command and then executes the classes in order of their
        # dependencies.
        # Note: There is no `package` in these classes. There is no classpath set here either instead we take  
        # on the task of compiling items in the proper order and moving them to where they are required for
        # additional compilation.
        basic_run)
            javac parters/Fareweller.java
            mv parters/Fareweller.class .
            javac App.java
            java App
            ;;
        # The `basic_mistake` command will fail! It is intended to demonstrate a common failure scenario in which  
        # the user assumes that the App class will be able to be compiled in the same way the colocated Java files
        # with dependencies are compiled without complaint. The lesson here being that when not in the same 
        # directory the `javac` tool needs to be made aware of the source either as a pre-compiled item on the
        # classpath, or as a source dependency discoverable on the sourcepath. 
        basic_mistake)
            javac App.java
            java App
            ;;
        # The `multi_cp_run` command runs the java compile command with more intelligent classpath information.
        # The `App` class is compiled with its dependencies available on the classpath and is subsequently
        # run with dependendeicnes on the run command's classpath.
        multi_cp_run)
            javac parters/Fareweller.java
            javac -classpath .:parters App.java
            java -classpath .:parters App
            ;;
        # The `sp_cp_run` command runs the java compile command with even fancier tricks. The sourcepath option
        # informs the compiler on the location of sources which supercedes the requirment for compiling in order 
        # as long as all sources are listed either in the source path or is the primary target (`App.java`)
        # Note: The current directory is not in the sourcepath if you override it, but the primary
        # compilation target is available since it is specified.
        # Note: When this runs dependencies are taken from the sourcepath and placed in to the final 
        # directory (`bin` in this case). This means that dependencies are converted to classes for free. Woot.
        # Note: sourcepath and classpath do the same thing in this exercise -- Why *shrug* -- The correct usage is sourcepath.
        # Source: https://docs.oracle.com/javase/7/docs/technotes/tools/windows/javac.html#separating
        sp_cp_run)
            mkdir bin
            javac -d bin --sourcepath parters App.java
            java -classpath ./bin App Logan Charles Jean
            ;;
esac

