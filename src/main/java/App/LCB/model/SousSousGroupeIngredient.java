package App.LCB.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="ss_ss_groupe_ingredients")
public class SousSousGroupeIngredient {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id_ss_ss_grp_ingredient")
	private Integer id;
	
	@Column(name="lib_ss_ss_grp_ingredient")
	private String lib;
	
	
	@OneToMany
	@JoinColumn(name="id_ss_ss_groupe_ingredient")
	List<Ingredient> ingredients;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLib() {
		return lib;
	}

	public void setLib(String lib) {
		this.lib = lib;
	}

	
	
	
	public List<Ingredient> getIngredients() {
		return ingredients;
	}

	public void setIngredients(List<Ingredient> ingredients) {
		this.ingredients = ingredients;
	}

	public SousSousGroupeIngredient() {
		
	}

	public SousSousGroupeIngredient(Integer id, String lib, Integer idSsGrp, List<Ingredient> ingredients) {
		super();
		this.id = id;
		this.lib = lib;
		this.ingredients = ingredients;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((ingredients == null) ? 0 : ingredients.hashCode());
		result = prime * result + ((lib == null) ? 0 : lib.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		SousSousGroupeIngredient other = (SousSousGroupeIngredient) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (ingredients == null) {
			if (other.ingredients != null)
				return false;
		} else if (!ingredients.equals(other.ingredients))
			return false;
		if (lib == null) {
			if (other.lib != null)
				return false;
		} else if (!lib.equals(other.lib))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "SousSousGroupeIngredient [id=" + id + ", lib=" + lib + ", ingredients=" + ingredients + "]";
	}
	
	
	
	
}
