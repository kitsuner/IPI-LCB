package App.LCB.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import App.LCB.model.SousSousGroupeIngredient;

@Repository
public interface SousSousGroupeIngredientRepository extends CrudRepository<SousSousGroupeIngredient, Integer>{

}
