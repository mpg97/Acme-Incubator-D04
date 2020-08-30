
package acme.features.authenticated.investmentround;

import java.util.Collection;
import java.util.Date;

import org.springframework.data.jpa.repository.Query;

import acme.entities.investmentround.InvestmentRound;
import acme.framework.repositories.AbstractRepository;

public interface AuthenticatedInvestmentRoundRepository extends AbstractRepository {

	@Query("select n from InvestmentRound n")
	Collection<InvestmentRound> findAllInvestmentRounds();

	@Query("select n from InvestmentRound n where n.id = ?1")
	InvestmentRound findInvestmentRoundById(int id);

	@Query("SELECT DISTINCT i FROM InvestmentRound i INNER JOIN WorkProgramme as w ON i.workProgramme.id = w.id JOIN w.activities a WHERE a.end > ?1")
	Collection<InvestmentRound> findAllActiveInvestmentRounds(Date d);

}
