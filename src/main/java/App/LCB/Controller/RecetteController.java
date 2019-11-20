package App.LCB.Controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import App.LCB.model.Recette;
import App.LCB.repository.RecetteRepository;

@Controller
@RequestMapping("/recette")
public class RecetteController {

	@Autowired
	private RecetteRepository recetteRepository;
	
	@RequestMapping("/all")
	@ResponseBody
	private List<Recette> SearchAll() {
		return (List<Recette>) recetteRepository.findAll();
	}
	
}
