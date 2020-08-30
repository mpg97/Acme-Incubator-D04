
package acme.features.authenticated.investmentround;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;

import acme.entities.investmentround.InvestmentRound;
import acme.framework.repositories.AbstractRepository;

public interface AuthenticatedInvestmentRoundRepository extends AbstractRepository {

	@Query("select n from InvestmentRound n")
	Collection<InvestmentRound> findAllInvestmentRounds();

	@Query("select n from InvestmentRound n where n.id = ?1")
	InvestmentRound findInvestmentRoundById(int id);

	@Query("select distinct i from InvestmentRound i")
	Collection<InvestmentRound> findAllActiveInvestmentRounds();

}
