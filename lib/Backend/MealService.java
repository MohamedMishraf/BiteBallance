import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class MealService {
    @Autowired
    private MealRepository mealRepository;

    public List<Meal> suggestMeals(List<String> dietaryNeeds) {
        return mealRepository.findBySuitableForIn(dietaryNeeds);
    }
}