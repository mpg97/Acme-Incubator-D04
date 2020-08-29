
package acme.entities.application;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import acme.entities.investmentround.InvestmentRound;
import acme.entities.roles.Investor;
import acme.framework.datatypes.Money;
import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Application extends DomainEntity {

	/**
	 *
	 */
	private static final long	serialVersionUID	= 1L;

	@NotBlank
	private String				ticker;

	@Temporal(TemporalType.TIMESTAMP)
	private Date				creation;

	@NotBlank
	private String				statement;

	@Valid
	@NotNull
	private Money				moneyOffer;

	@NotBlank
	@Pattern(regexp = ".*\\b(accepted|pending|rejected)\\b.*")
	private String				status;

	private String				justification;

	@NotNull
	@Valid
	@ManyToOne(optional = false)
	private InvestmentRound		investmentRound;

	@NotNull
	@Valid
	@ManyToOne(optional = false)
	private Investor			investor;

}
