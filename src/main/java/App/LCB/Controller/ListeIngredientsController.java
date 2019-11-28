package App.LCB.Controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import App.LCB.repository.ListeIngredientsRepository;

@Controller
@RequestMapping("/listeIngredient")
public class ListeIngredientsController {

	@Autowired
	private ListeIngredientsRepository listeIngredientRepository;
	
	
	
	
	
	
}
