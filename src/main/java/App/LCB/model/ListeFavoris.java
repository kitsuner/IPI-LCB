package App.LCB.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;


@Entity
public class ListeFavoris {
	
	@Embedded
	ListeFavorisRecette id;
	
	@OneToOne
	@MapsId("id_utilisateur")
	@JoinColumn(name = "id_utilisateur")
	Utilisateur utilisateur;
	
	@OneToOne
	@MapsId("id_recette")
	@JoinColumn(name = "id_recette")
	Recette recette;

	public ListeFavorisRecette getId() {
		return id;
	}

	public void setId(ListeFavorisRecette id) {
		this.id = id;
	}

	public Utilisateur getUtilisateur() {
		return utilisateur;
	}

	public void setUtilisateur(Utilisateur utilisateur) {
		this.utilisateur = utilisateur;
	}

	public Recette getRecette() {
		return recette;
	}

	public void setRecette(Recette recette) {
		this.recette = recette;
	}

	public ListeFavoris(ListeFavorisRecette id, Utilisateur utilisateur, Recette recette) {
		super();
		this.id = id;
		this.utilisateur = utilisateur;
		this.recette = recette;
	}

	public ListeFavoris() {
		
	}

}

@Embeddable
class ListeFavorisRecette implements Serializable {
	
	
	


	@Column(name = "id_utilisateur")
	Long idUtilisateur;
	
	
	@Column(name = "id_recette")
	Long idRecette;


	public Long getIdUtilisateur() {
		return idUtilisateur;
	}


	public void setIdUtilisateur(Long idIngredient) {
		this.idUtilisateur = idIngredient;
	}


	public Long getIdRecette() {
		return idRecette;
	}


	public void setIdRecette(Long idRecette) {
		this.idRecette = idRecette;
	}





	public ListeFavorisRecette() {
		
	}
	public ListeFavorisRecette(Long idUtilisateur, Long idRecette) {
		super();
		this.idUtilisateur = idUtilisateur;
		this.idRecette = idRecette;
	}

	
}
