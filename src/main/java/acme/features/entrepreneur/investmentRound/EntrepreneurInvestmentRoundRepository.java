
package acme.features.entrepreneur.investmentRound;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;

import acme.entities.investmentround.InvestmentRound;
import acme.framework.repositories.AbstractRepository;

public interface EntrepreneurInvestmentRoundRepository extends AbstractRepository {

	@Query("select n from InvestmentRound n")
	Collection<InvestmentRound> findAllInvestmentRounds();

	@Query("select n from InvestmentRound n where n.id = ?1")
	InvestmentRound findInvestmentRoundById(int id);

	@Query("select n from InvestmentRound n where n.entrepreneur.id = ?1")
	Collection<InvestmentRound> findInvestmentRoundByEntrepreneurId(int id);

}
