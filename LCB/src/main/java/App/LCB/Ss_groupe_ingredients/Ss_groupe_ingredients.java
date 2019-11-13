package App.LCB.Ss_groupe_ingredients;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;



@Entity
public class Ss_groupe_ingredients {
	
	
	@Id
	@GeneratedValue
	private Integer id_ss_grp_ingredient;
	private String lib_ss_grp_ingredient;
	private Integer id_grp_ingredient;
	
	// Constructor
	
	public Ss_groupe_ingredients() {
	}

	
	// Getter Setter

	public Integer getId_ss_grp_ingredient() {
		return id_ss_grp_ingredient;
	}


	public void setId_ss_grp_ingredient(Integer id_ss_grp_ingredient) {
		this.id_ss_grp_ingredient = id_ss_grp_ingredient;
	}


	public String getLib_ss_grp_ingredient() {
		return lib_ss_grp_ingredient;
	}


	public void setLib_ss_grp_ingredient(String lib_ss_grp_ingredient) {
		this.lib_ss_grp_ingredient = lib_ss_grp_ingredient;
	}


	public Integer getId_grp_ingredient() {
		return id_grp_ingredient;
	}


	public void setId_grp_ingredient(Integer id_grp_ingredient) {
		this.id_grp_ingredient = id_grp_ingredient;
	}
	
	
	
	

}
