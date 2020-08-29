
package acme.entities.investmentround;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.URL;

import acme.entities.roles.Entrepreneur;
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
	private Date				creationDate;

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

	@NotBlank
	@Pattern(regexp = ".*\\b(SEED|ANGEL|SERIESA|SERIESB|SERIESC|BRIDGE)\\b.*")
	private String				kindRound;

	@NotNull
	@Valid
	@ManyToOne(optional = false)
	private Entrepreneur		entrepreneur;

}
