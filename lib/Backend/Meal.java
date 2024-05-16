import javax.persistence.*;
import java.util.List;

@Entity
public class Meal {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private List<String> ingredients;
    private List<String> suitableFor; // dietary needs it meets

    // Standard getters and setters
}