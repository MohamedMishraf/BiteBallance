import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/meals")
public class MealController {
    @Autowired
    private MealService mealService;

    @GetMapping("/suggest")
    public List<Meal> getSuggestedMeals(@RequestParam List<String> dietaryNeeds) {
        return mealService.suggestMeals(dietaryNeeds);
    }
}