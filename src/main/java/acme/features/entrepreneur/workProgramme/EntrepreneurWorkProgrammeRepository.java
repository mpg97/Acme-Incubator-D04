
package acme.features.entrepreneur.workProgramme;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;

import acme.entities.workProgramme.WorkProgramme;
import acme.framework.repositories.AbstractRepository;

public interface EntrepreneurWorkProgrammeRepository extends AbstractRepository {

	@Query("select n from WorkProgramme n where n.id = ?1")
	WorkProgramme findWorkProgrammeById(int id);

	@Query("select w from WorkProgramme w INNER JOIN w.investmentRound i where i.entrepreneur.id = ?1")
	Collection<WorkProgramme> findWorkProgrammeByEntrepreneurId(int id);

}
