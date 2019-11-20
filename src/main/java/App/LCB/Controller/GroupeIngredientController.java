package App.LCB.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import App.LCB.model.GroupeIngredient;
import App.LCB.repository.GroupeIngredientRepository;

@Controller
@RequestMapping("groupe")
public class GroupeIngredientController {

	@Autowired
	private GroupeIngredientRepository groupeIngredientRepository;
	
	@RequestMapping("/all")
	@ResponseBody
	private List<GroupeIngredient> SearchAll() {
		return (List<GroupeIngredient>) groupeIngredientRepository.findAll();
	}
}
