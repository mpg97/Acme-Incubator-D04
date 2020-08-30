
package acme.entities.workProgramme;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.validation.Valid;
import javax.validation.constraints.NotEmpty;

import acme.entities.activity.Activity;
import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class WorkProgramme extends DomainEntity {

	/**
	 *
	 */
	private static final long		serialVersionUID	= 1L;

	@NotEmpty
	@OneToMany
	private List<@Valid Activity>	activities;

}
