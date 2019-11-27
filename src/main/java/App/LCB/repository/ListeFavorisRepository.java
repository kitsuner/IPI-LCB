package App.LCB.repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

@Repository
public class ListeFavorisRepository {
	
	@PersistenceContext
	private EntityManager entityManager;
	
	@Transactional
	public void insertWithQuery(Long idUti,  Long idRec, int quantite) {
		entityManager.createNativeQuery("Insert into liste_favoris (id_utilisateur, id_recette) values (?,?)")
		.setParameter(1, idUti)
		.setParameter(2, idRec)
		.executeUpdate();
	}
	
	
}
