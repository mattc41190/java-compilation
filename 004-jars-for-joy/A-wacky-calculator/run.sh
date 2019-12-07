# This is the application compile and runner script.
# Read the comments in this file to understand what's occuring.

# NOTE: Before running any option run `sh run.sh clean` to ensure cleanliness

case "$1" in
        # The `clean` command cleans the durrent directory of build artifacts
        # Anything past this and `globstar`, (the `**` glob available in bash v4) may be required.
        clean)
            rm -f com/wacky_math/*.class
            rm -rf wacky-calc.jar
            rm -rf lib
            ;;

        # The `basic_build` command compiles the wacky-calculator into a lib directory and once compiled 
        # into classes build a JAR. To prove that we have what we expect we can run an index command.
        # The commands broken down do the following: create a new directory, compile, then run the jar tool
        # With the following options `cvf` (Create, Verbose, File(not stdout))  and `-C lib`
        basic_build)
            mkdir lib
            javac -d lib com/wacky_math/*.java
            jar cvf wacky-calc.jar -C lib com
            ;;
        # The `inspect` command shows the contents of an existent JAR.
        # Pre-Req: wacky-calc.jar must exist.
        inspect)
            jar tf wacky-calc.jar
            ;;
esac

