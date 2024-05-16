import javax.persistence.*;
import java.util.List;

@Entity
public class UserProfile {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String username;
    private List<String> dietaryPreferences;
    private List<String> allergies;
    private List<String> healthGoals;

    // Standard getters and setters
}