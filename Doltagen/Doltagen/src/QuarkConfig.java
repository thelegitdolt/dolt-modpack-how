public class QuarkConfig {
    public static final QuarkConfig INSTANCE = new QuarkConfig();

    private final String path;

    private QuarkConfig() {
        path = Paths.QUARK_CONFIG_LOC;
    }

    public void select() {
        
    }
}

