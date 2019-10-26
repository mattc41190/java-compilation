public class Greeter {
    public void greet(String ...args) {
        for (String thing : args) {
            System.out.printf("Hello, %s%n", thing);
        }
    }
}