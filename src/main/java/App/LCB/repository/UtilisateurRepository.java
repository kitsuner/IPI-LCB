package App.LCB.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import App.LCB.model.Utilisateur;


@Repository
public interface UtilisateurRepository extends CrudRepository<Utilisateur, Long>{
  
	
	// Connexion de l'utilisateur
  @Query("SELECT u FROM Utilisateur u WHERE mail=?1 AND mot_de_passe=?2")
  public Utilisateur connexion(String mail, String pass);
	
	
	Utilisateur findByMail(String emailAdress);

	
}
