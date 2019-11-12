# This is the application compile and runner script.
# Read the comments in this file to understand what's occuring.

# NOTE: Before running any option run `sh run.sh clean` to ensure cleanliness

case "$1" in
        # The `clean` command cleans the durrent directory of build artifacts
        # Anything past this and `globstar`, (the `**` glob available in bash v4) may be required.
        clean)
            rm -f *.class
            rm -rf bin
            rm -rf app
            rm -rf lib
            rm -rf *.jar
            ;;

        # The `basic_run` command will create a final executable as a class file which must then
        # be run by including the app directory, and the path to the Calculator package on the classpath.
        # Note, in the `javac` command we supply a sourcepath and Java will compile required classes into
        # the appropriate directory/classpath mandated structure.
        # Recall as well, that for packages are inexoribly linked to directory in this case when the user 
        # invokes `java` and provides a class path of app:$CALC the following packages are available to the
        # JRE: com.door_store.Store.class, com.wacky_math.Calculator.class (by virtue of the JAR classpath 
        # rules), and the class path of the class with the main method which intend to invoke com.matthewcale.App
        basic_run)
            CALC=/Users/mattcale/Desktop/Learning/Java/java-compiling/004-jars-for-joy/A-wacky-calculator/wacky-calc.jar 
            mkdir app
            javac -d app \
                -sourcepath .:com/door_store/*.java \
                -classpath .:$CALC \
                com/matthewcale/*.java
            java \
                -classpath app:$CALC \
                com/matthewcale/App
            ;;
        # The `basic_jar_run` command will create an executable JAR. The process is largely the same as
        # basic_run command with a few significant changes. The first is that I must declare an entry point
        # the entry point gets places into a file called a Manifest. The Manifest file will be covered in
        # more depth later, but for now it should suffice that a Manifest file is a file that contains
        # metadata pertitnent to what the JAR is actually for. To create an entrypoint property the user must 
        # pass the -e flag to the `jar` command. The second difference is the invocation which is `java -jar` 
        # rather than `java X.class` 
        basic_jar_run)
            # Full System path to JAR we want available at compile time and run time
            CALC=/Users/mattcale/Desktop/Learning/Java/java-compiling/004-jars-for-joy/A-wacky-calculator/wacky-calc.jar 
            mkdir app
            javac -d app \
                -sourcepath .:com/door_store/*.java \
                -classpath .:$CALC \
                com/matthewcale/*.java
            jar cvfe door_store.jar App -C app com
            java -classpath app:$CALC -jar door_store.jar
            ;;
        # The `inspect` command will show contents of a JAR.
        # Pre-Req: door_store.jar exists
        inspect)
            jar tf door_store.jar
            ;;
esac

