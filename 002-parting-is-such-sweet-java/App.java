public class App {
    public static void main(String[] args) {
        if (args.length < 1) {
            args = new String[] {"Java"};
        }
        Fareweller fareweller =  new Fareweller();
        fareweller.farewell(args);
    }
}