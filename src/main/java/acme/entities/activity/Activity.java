
package acme.entities.activity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import acme.entities.workProgramme.WorkProgramme;
import acme.framework.datatypes.Money;
import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Activity extends DomainEntity {

	/**
	 *
	 */
	private static final long	serialVersionUID	= 1L;

	@NotBlank
	private String				title;

	@Temporal(TemporalType.TIMESTAMP)
	private Date				start;

	@NotNull
	@Temporal(TemporalType.TIMESTAMP)
	private Date				end;

	@Valid
	@NotNull
	private Money				budget;

	@NotNull
	@Valid
	@ManyToOne(optional = false)
	private WorkProgramme		workProgramme;

}
