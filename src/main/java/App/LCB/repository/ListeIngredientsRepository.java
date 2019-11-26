package App.LCB.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import App.LCB.model.Ingredient;
import App.LCB.model.ListeIngredients;

@Repository
public interface ListeIngredientsRepository extends CrudRepository<ListeIngredients, Ingredient>{

}
