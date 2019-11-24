package App.LCB.repository;



import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import App.LCB.model.Recette;

@Repository
public interface RecetteRepository extends CrudRepository<Recette, Long>{

	
	
	List<Recette> findByLibContaining(String lib);
	
}
