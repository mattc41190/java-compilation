# This is the application compile and runner script.
# Read the comments in this file to understand what's occuring.

# NOTE: Before running any option run `sh run.sh clean` to ensure cleanliness

# Side note: You will notice that I have started pulling functions out to make the switch 
# a bit more legible.

clean() {
	rm -rf deps
	rm -rf classes
	echo "done cleaning"
}

deps() {
	JUNIT="https://search.maven.org/remotecontent?filepath=junit/junit/4.13-rc-2/junit-4.13-rc-2.jar"
	HAMCREST="https://search.maven.org/remotecontent?filepath=org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar"
	mkdir deps
	cd deps
	curl -O $JUNIT
	curl -O $HAMCREST
	cd ..
}

compile_src() {
	# It should be noted that the package name does not include src and thus 
	# the `classes` sub-directories will not include it. This is a nice surprise.
	mkdir classes
	javac \
		-d classes \
		src/com/yeehaw/PhraseGenerator.java
}

compile_test() {
	# It should be noted that the package name does not include src and thus 
	# the `classes` sub-directories will not include it. This is a nice surprise.
	mkdir classes
	javac \
		-d classes \
		-cp .:classes:deps/junit-4.13-rc-2.jar:deps/hamcrest-core-1.3.jar \
		test/com/yeehaw/PhraseGeneratorTest.java
}

run_test() {
	TEST_PATH="/Users/mattcale/java-compilation/005-wild-web-test/classes/com/yeehaw/PhraseGeneratorTest"
	java \
	-cp .:classes:deps/junit-4.13-rc-2.jar:deps/hamcrest-core-1.3.jar \
	org.junit.runner.JUnitCore com.yeehaw.PhraseGeneratorTest
}

case "$1" in
        # The `clean` command cleans the current directory of build artifacts
        clean)
            clean
            ;;
						
        # The `deps` command will download required JARs from the internet
        deps)
						clean
            deps
            ;;

        # The `compile_src` will create required source classes. 
				# Refer back to packages lesson to understand commands.
        compile_src)
						compile_src
            ;;

				# The `compile_test` command will create required test classes. 
				# Refer back to packages lesson to understand commands.
        compile_test)
						compile_test
            ;;

				# The `run_test` command will run the tests
        run_test)
						run_test
            ;;
esac

