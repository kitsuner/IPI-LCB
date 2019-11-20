package App.LCB.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import App.LCB.model.Utilisateur;


@Repository
public interface UtilisateurRepository extends CrudRepository<Utilisateur, Long>{

}
