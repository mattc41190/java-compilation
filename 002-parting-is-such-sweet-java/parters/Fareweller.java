public class Fareweller {
    public void farewell(String ...args) {
        for (String thing : args) {
            System.out.printf("Parting is such sweet sorrow my dearest, %s%n", thing);
        }
    }
}