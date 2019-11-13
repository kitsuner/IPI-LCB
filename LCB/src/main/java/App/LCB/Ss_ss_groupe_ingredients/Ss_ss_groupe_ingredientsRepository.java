package App.LCB.Ss_ss_groupe_ingredients;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import App.LCB.Ss_groupe_ingredients.Ss_groupe_ingredients;

@Transactional
@Repository
public interface Ss_ss_groupe_ingredientsRepository extends CrudRepository<Ss_groupe_ingredients, Integer>{

}
