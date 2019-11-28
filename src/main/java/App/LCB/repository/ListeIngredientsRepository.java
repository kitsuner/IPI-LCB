package App.LCB.repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import App.LCB.model.Ingredient;
import App.LCB.model.ListeIngredients;

@Repository
public class ListeIngredientsRepository {
	
	@PersistenceContext
	private EntityManager entityManager;
	
	
	@Transactional
	public void insertWithQuerys(Long listIngr,  Long idRec, int quantite) {
		entityManager.createNativeQuery("Insert into liste_ingredients (id_ingredient, id_recette, quantite) values (?,?,?)")
		.setParameter(1, listIngr)
		.setParameter(2, idRec)
		.setParameter(3, quantite)
		.executeUpdate();
	}
	
	
}
