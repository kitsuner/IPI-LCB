package App.LCB.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import App.LCB.model.GroupeIngredient;

@Repository
public interface GroupeIngredientRepository extends CrudRepository<GroupeIngredient, Integer>{

}
