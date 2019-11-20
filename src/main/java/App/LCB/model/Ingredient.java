package App.LCB.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Ingredient {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="id_ingredient")
	private Long idIngredient;
	
	@Column(name="alim_nom_fr")
	private String alimNom;
	
	@Column(name="Energie")
	private String energie;
	
	@Column(name="Eau")
	private String eau;
	
	@Column(name="Proteines")
	private String proteines;
	
	@Column(name="Glucides")
	private String glucides;
	
	@Column(name="Lipides")
	private String lipides;
	
	@Column(name="Sucres")
	private String sucres;
	
	@Column(name="Amidon")
	private String amidon;
	
	@Column(name="Fibres_alimentaires")
	private String fibresAlimentaires;
	
	@Column(name="Cholesterol")
	private String cholosterol;
	
	@Column(name="sel")
	private String sel;
	
	@Column(name="Calcium")
	private String calcium;
	
	@Column(name="Fer")
	private String fer;
	
	@Column(name="Iode")
	private String iode;
	
	@Column(name="Beta_Carotene")
	private String betaCarotene;
	
	@Column(name="VitamineD")
	private String vitamineD;
	
	@Column(name="VitamineE")
	private String vitamineE;
	
	@Column(name="VitamineC")
	private String vitamineC;
	
	@Column(name="VitamineB1")
	private String vitamineB1;
	
	@Column(name="VitamineB12")
	private String vitamineB12;
	
	

	public Long getIdIngredient() {
		return idIngredient;
	}

	public void setIdIngredient(Long idIngredient) {
		this.idIngredient = idIngredient;
	}

	public String getAlimNom() {
		return alimNom;
	}

	public void setAlimNom(String alimNom) {
		this.alimNom = alimNom;
	}

	public String getEnergie() {
		return energie;
	}

	public void setEnergie(String energie) {
		this.energie = energie;
	}

	public String getEau() {
		return eau;
	}

	public void setEau(String eau) {
		this.eau = eau;
	}

	public String getProteines() {
		return proteines;
	}

	public void setProteines(String proteines) {
		this.proteines = proteines;
	}

	public String getGlucides() {
		return glucides;
	}

	public void setGlucides(String glucides) {
		this.glucides = glucides;
	}

	public String getLipides() {
		return lipides;
	}

	public void setLipides(String lipides) {
		this.lipides = lipides;
	}

	public String getSucres() {
		return sucres;
	}

	public void setSucres(String sucres) {
		this.sucres = sucres;
	}

	public String getAmidon() {
		return amidon;
	}

	public void setAmidon(String amidon) {
		this.amidon = amidon;
	}

	public String getFibresAlimentaires() {
		return fibresAlimentaires;
	}

	public void setFibresAlimentaires(String fibresAlimentaires) {
		this.fibresAlimentaires = fibresAlimentaires;
	}

	public String getCholosterol() {
		return cholosterol;
	}

	public void setCholosterol(String cholosterol) {
		this.cholosterol = cholosterol;
	}

	public String getSel() {
		return sel;
	}

	public void setSel(String sel) {
		this.sel = sel;
	}

	public String getCalcium() {
		return calcium;
	}

	public void setCalcium(String calcium) {
		this.calcium = calcium;
	}

	public String getFer() {
		return fer;
	}

	public void setFer(String fer) {
		this.fer = fer;
	}

	public String getIode() {
		return iode;
	}

	public void setIode(String iode) {
		this.iode = iode;
	}

	public String getBetaCarotene() {
		return betaCarotene;
	}

	public void setBetaCarotene(String betaCarotene) {
		this.betaCarotene = betaCarotene;
	}

	public String getVitamineD() {
		return vitamineD;
	}

	public void setVitamineD(String vitamineD) {
		this.vitamineD = vitamineD;
	}

	public String getVitamineE() {
		return vitamineE;
	}

	public void setVitamineE(String vitamineE) {
		this.vitamineE = vitamineE;
	}

	public String getVitamineC() {
		return vitamineC;
	}

	public void setVitamineC(String vitamineC) {
		this.vitamineC = vitamineC;
	}

	public String getVitamineB1() {
		return vitamineB1;
	}

	public void setVitamineB1(String vitamineB1) {
		this.vitamineB1 = vitamineB1;
	}

	public String getVitamineB12() {
		return vitamineB12;
	}

	public void setVitamineB12(String vitamineB12) {
		this.vitamineB12 = vitamineB12;
	}

	
	
	public Ingredient() {
		
	}
	public Ingredient(Long idIngredient, String alimNom, String energie, String eau, String proteines, String glucides,
			String lipides, String sucres, String amidon, String fibresAlimentaires, String cholosterol, String sel,
			String calcium, String fer, String iode, String betaCarotene, String vitamineD, String vitamineE,
			String vitamineC, String vitamineB1, String vitamineB12) {
		super();
		this.idIngredient = idIngredient;
		this.alimNom = alimNom;
		this.energie = energie;
		this.eau = eau;
		this.proteines = proteines;
		this.glucides = glucides;
		this.lipides = lipides;
		this.sucres = sucres;
		this.amidon = amidon;
		this.fibresAlimentaires = fibresAlimentaires;
		this.cholosterol = cholosterol;
		this.sel = sel;
		this.calcium = calcium;
		this.fer = fer;
		this.iode = iode;
		this.betaCarotene = betaCarotene;
		this.vitamineD = vitamineD;
		this.vitamineE = vitamineE;
		this.vitamineC = vitamineC;
		this.vitamineB1 = vitamineB1;
		this.vitamineB12 = vitamineB12;
		
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((alimNom == null) ? 0 : alimNom.hashCode());
		result = prime * result + ((amidon == null) ? 0 : amidon.hashCode());
		result = prime * result + ((betaCarotene == null) ? 0 : betaCarotene.hashCode());
		result = prime * result + ((calcium == null) ? 0 : calcium.hashCode());
		result = prime * result + ((cholosterol == null) ? 0 : cholosterol.hashCode());
		result = prime * result + ((eau == null) ? 0 : eau.hashCode());
		result = prime * result + ((energie == null) ? 0 : energie.hashCode());
		result = prime * result + ((fer == null) ? 0 : fer.hashCode());
		result = prime * result + ((fibresAlimentaires == null) ? 0 : fibresAlimentaires.hashCode());
		result = prime * result + ((glucides == null) ? 0 : glucides.hashCode());
		result = prime * result + ((idIngredient == null) ? 0 : idIngredient.hashCode());
		result = prime * result + ((iode == null) ? 0 : iode.hashCode());
		result = prime * result + ((lipides == null) ? 0 : lipides.hashCode());
		result = prime * result + ((proteines == null) ? 0 : proteines.hashCode());
		result = prime * result + ((sel == null) ? 0 : sel.hashCode());
		result = prime * result + ((sucres == null) ? 0 : sucres.hashCode());
		result = prime * result + ((vitamineB1 == null) ? 0 : vitamineB1.hashCode());
		result = prime * result + ((vitamineB12 == null) ? 0 : vitamineB12.hashCode());
		result = prime * result + ((vitamineC == null) ? 0 : vitamineC.hashCode());
		result = prime * result + ((vitamineD == null) ? 0 : vitamineD.hashCode());
		result = prime * result + ((vitamineE == null) ? 0 : vitamineE.hashCode());
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
		Ingredient other = (Ingredient) obj;
		if (alimNom == null) {
			if (other.alimNom != null)
				return false;
		} else if (!alimNom.equals(other.alimNom))
			return false;
		if (amidon == null) {
			if (other.amidon != null)
				return false;
		} else if (!amidon.equals(other.amidon))
			return false;
		if (betaCarotene == null) {
			if (other.betaCarotene != null)
				return false;
		} else if (!betaCarotene.equals(other.betaCarotene))
			return false;
		if (calcium == null) {
			if (other.calcium != null)
				return false;
		} else if (!calcium.equals(other.calcium))
			return false;
		if (cholosterol == null) {
			if (other.cholosterol != null)
				return false;
		} else if (!cholosterol.equals(other.cholosterol))
			return false;
		if (eau == null) {
			if (other.eau != null)
				return false;
		} else if (!eau.equals(other.eau))
			return false;
		if (energie == null) {
			if (other.energie != null)
				return false;
		} else if (!energie.equals(other.energie))
			return false;
		if (fer == null) {
			if (other.fer != null)
				return false;
		} else if (!fer.equals(other.fer))
			return false;
		if (fibresAlimentaires == null) {
			if (other.fibresAlimentaires != null)
				return false;
		} else if (!fibresAlimentaires.equals(other.fibresAlimentaires))
			return false;
		if (glucides == null) {
			if (other.glucides != null)
				return false;
		} else if (!glucides.equals(other.glucides))
			return false;
		if (idIngredient == null) {
			if (other.idIngredient != null)
				return false;
		} else if (!idIngredient.equals(other.idIngredient))
			return false;
		if (iode == null) {
			if (other.iode != null)
				return false;
		} else if (!iode.equals(other.iode))
			return false;
		if (lipides == null) {
			if (other.lipides != null)
				return false;
		} else if (!lipides.equals(other.lipides))
			return false;
		if (proteines == null) {
			if (other.proteines != null)
				return false;
		} else if (!proteines.equals(other.proteines))
			return false;
		if (sel == null) {
			if (other.sel != null)
				return false;
		} else if (!sel.equals(other.sel))
			return false;
		if (sucres == null) {
			if (other.sucres != null)
				return false;
		} else if (!sucres.equals(other.sucres))
			return false;
		if (vitamineB1 == null) {
			if (other.vitamineB1 != null)
				return false;
		} else if (!vitamineB1.equals(other.vitamineB1))
			return false;
		if (vitamineB12 == null) {
			if (other.vitamineB12 != null)
				return false;
		} else if (!vitamineB12.equals(other.vitamineB12))
			return false;
		if (vitamineC == null) {
			if (other.vitamineC != null)
				return false;
		} else if (!vitamineC.equals(other.vitamineC))
			return false;
		if (vitamineD == null) {
			if (other.vitamineD != null)
				return false;
		} else if (!vitamineD.equals(other.vitamineD))
			return false;
		if (vitamineE == null) {
			if (other.vitamineE != null)
				return false;
		} else if (!vitamineE.equals(other.vitamineE))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Ingredient [idIngredient=" + idIngredient + ", alimNom=" + alimNom + ", energie=" + energie + ", eau="
				+ eau + ", proteines=" + proteines + ", glucides=" + glucides + ", lipides=" + lipides + ", sucres="
				+ sucres + ", amidon=" + amidon + ", fibresAlimentaires=" + fibresAlimentaires + ", cholosterol="
				+ cholosterol + ", sel=" + sel + ", calcium=" + calcium + ", fer=" + fer + ", iode=" + iode
				+ ", betaCarotene=" + betaCarotene + ", vitamineD=" + vitamineD + ", vitamineE=" + vitamineE
				+ ", vitamineC=" + vitamineC + ", vitamineB1=" + vitamineB1 + ", vitamineB12=" + vitamineB12 + "]";
	}

	
}
