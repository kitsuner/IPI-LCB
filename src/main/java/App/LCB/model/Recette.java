package App.LCB.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="recette")
public class Recette {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id_recette")
	private Long id;
	
	@Column(name="lib_recette")
	private String lib;
	
	@Column(name="id_utilisateur")
	private Long idUtilisateur;
	
	

	@Column(name="instruction_recette")
	private String instruction;		
		
	@Column(name="nbr_personne")
	private Integer nbrPersonne;
	
	@Column(name="url_recette")
	private String urlRecette;
	
	@OneToMany(mappedBy = "recette")
	List<listeIngredients> listeIngredient;
	
	@Lob
	@Column(name="image")
	private byte[] image;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getLib() {
		return lib;
	}

	public void setLib(String lib) {
		this.lib = lib;
	}

	public Long getIdUtilisateur() {
		return idUtilisateur;
	}

	public void setIdUtilisateur(Long idUtilisateur) {
		this.idUtilisateur = idUtilisateur;
	}
	
	public String getInstruction() {
		return instruction;
	}

	public void setInstruction(String instruction) {
		this.instruction = instruction;
	}
	public Integer getNbrPersonne() {
		return nbrPersonne;
	} 

	public void setNbrPersonne(Integer nbrPersonne) {
		this.nbrPersonne = nbrPersonne;
	}

	public String getUrlRecette() {
		return urlRecette;
	}

	public void setUrlRecette(String urlRecette) {
		this.urlRecette = urlRecette;
	}
	

	public List<listeIngredients> getListeIngredient() {
		return listeIngredient;
	}

	public void setListeIngredient(List<listeIngredients> listeIngredient) {
		this.listeIngredient = listeIngredient;
	}

	
	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	public Recette() {
		
	}

	public Recette(Long id, String lib, Long idUtilisateur, String instruction, Integer nbrPersonne, String urlRecette,
			List<listeIngredients> listeIngredient, byte[] image) {
		super();
		this.id = id;
		this.lib = lib;
		this.idUtilisateur = idUtilisateur;
		this.instruction = instruction;
		this.nbrPersonne = nbrPersonne;
		this.urlRecette = urlRecette;
		this.listeIngredient = listeIngredient;
		this.image = image;
	}

	

}

@Embeddable
class ListeIngredientsRecette implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	@Column(name = "id_ingredient")
	Long idIngredient;
	
	
	@Column(name = "id_recette")
	Long idRecette;


	public Long getIdIngredient() {
		return idIngredient;
	}


	public void setIdIngredient(Long idIngredient) {
		this.idIngredient = idIngredient;
	}


	public Long getIdRecette() {
		return idRecette;
	}


	public void setIdRecette(Long idRecette) {
		this.idRecette = idRecette;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	public ListeIngredientsRecette() {
		
	}
	public ListeIngredientsRecette(Long idIngredient, Long idRecette) {
		super();
		this.idIngredient = idIngredient;
		this.idRecette = idRecette;
	}

	
}

@Entity
class listeIngredients {
	
	@EmbeddedId
	ListeIngredientsRecette id;
	
	@ManyToOne
	@MapsId("id_ingredient")
	@JoinColumn(name = "id_ingredient")
	Ingredient ingredient;
	
	@ManyToOne
	@MapsId("id_recette")
	@JoinColumn(name= "id_recette")
	Recette recette;

	private Integer quantite;
	
	public void setId(ListeIngredientsRecette id) {
		this.id = id;
	}

	public Ingredient getIngredient() {
		return ingredient;
	}

	public void setIngredient(Ingredient ingredient) {
		this.ingredient = ingredient;
	}


	public void setRecette(Recette recette) {
		this.recette = recette;
	}

	
	public Integer getQuantite() {
		return quantite;
	}

	public void setQuantite(Integer quantite) {
		this.quantite = quantite;
	}

	public listeIngredients() {
		
	}
	public listeIngredients(ListeIngredientsRecette id, Ingredient ingredient, Recette recette, Integer quantite) {
		super();
		this.id = id;
		this.ingredient = ingredient;
		this.recette = recette;
		this.quantite = quantite;
	}
	
}
