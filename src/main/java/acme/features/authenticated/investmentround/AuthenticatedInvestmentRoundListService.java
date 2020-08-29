
package acme.features.authenticated.investmentround;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.activity.Activity;
import acme.entities.investmentround.InvestmentRound;
import acme.entities.workProgramme.WorkProgramme;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Authenticated;
import acme.framework.services.AbstractListService;

@Service
public class AuthenticatedInvestmentRoundListService implements AbstractListService<Authenticated, InvestmentRound> {

	@Autowired
	AuthenticatedInvestmentRoundRepository repository;


	@Override
	public boolean authorise(final Request<InvestmentRound> request) {
		assert request != null;

		return true;
	}

	@Override
	public void unbind(final Request<InvestmentRound> request, final InvestmentRound entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		request.unbind(entity, model, "ticker", "creationDate", "title", "description", "amount", "moreInfo", "kindRound", "entrepreneur.startUpName");

	}

	@Override
	public Collection<InvestmentRound> findMany(final Request<InvestmentRound> request) {
		assert request != null;

		Collection<InvestmentRound> active = new ArrayList<>();
		Collection<Activity> activities = this.repository.findAllActiveActivity();

		for (Activity a : activities) {

			WorkProgramme w = a.getWorkProgramme();

			if (!active.contains(w.getInvestmentRound())) {
				active.add(w.getInvestmentRound());
			}
		}

		return active;
	}
}
