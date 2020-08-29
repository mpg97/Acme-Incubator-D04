
package acme.features.entrepreneur.activity;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.activity.Activity;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface EntrepreneurActivityRepository extends AbstractRepository {

	@Query("select a from Activity a where a.workProgramme.investmentRound.entrepreneur.id = ?1")
	Collection<Activity> findActivityByEntrepenurId(int id);

	@Query("select n from Activity n where n.id = ?1")
	Activity findActivityById(int id);

}
