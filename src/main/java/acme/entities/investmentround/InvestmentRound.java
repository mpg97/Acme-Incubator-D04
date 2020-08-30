
package acme.entities.investmentround;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.URL;

import acme.entities.roles.Entrepreneur;
import acme.entities.workProgramme.WorkProgramme;
import acme.framework.datatypes.Money;
import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class InvestmentRound extends DomainEntity {

	/**
	 *
	 */
	private static final long	serialVersionUID	= 1L;

	@NotBlank
	@Pattern(regexp = "^([A-Z]{3}[-][0-9]{2}[-][0-9]{6})")
	private String				ticker;

	@NotNull
	@Temporal(TemporalType.TIMESTAMP)
	@Past
	private Date				creationDate;

	@NotNull
	@Valid
	private KindOfRound			kindRound;

	@NotBlank
	private String				title;

	@NotBlank
	@Column(length = 1024)
	private String				description;

	@NotNull
	@Valid
	private Money				amount;

	@URL
	private String				moreInfo;

	@NotNull
	@Valid
	@ManyToOne(optional = false)
	private Entrepreneur		entrepreneur;

	@Valid
	@OneToOne(optional = false)
	private WorkProgramme		workProgramme;


	@Transient
	private Money getTotalAmount() {
		Double total = this.workProgramme.getActivities().stream().mapToDouble(a -> a.getBudget().getAmount()).sum();
		Money result = new Money();
		result.setAmount(total);
		result.setCurrency("€");
		return result;

	}

}
