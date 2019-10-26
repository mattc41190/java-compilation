public class App {
    public static void main(String[] args) {
        if (args.length < 1) {
            args = new String[] {"World"};
        }
        Greeter greeter =  new Greeter();
        greeter.greet(args);
    }
}