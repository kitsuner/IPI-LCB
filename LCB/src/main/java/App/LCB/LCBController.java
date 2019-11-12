package App.LCB;


	import org.springframework.stereotype.Controller;
	import org.springframework.web.bind.annotation.RequestMapping;


	@Controller
	public class LCBController {
		@RequestMapping("accueil.html")
		public String home() {
			return "accueil.jsp";
		}
		@RequestMapping("connexion.html")
		public String connexion() {
			return "index.jsp";
		}
	}

