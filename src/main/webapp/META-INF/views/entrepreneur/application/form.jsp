<%-- - form.jsp - - Copyright (c) 2019 Rafael Corchuelo. - - In keeping with the traditional purpose of furthering education and
research, it is - the policy of the copyright owner to permit non-commercial use and redistribution of - this software. It has been
tested carefully, but it is not guaranteed for any particular - purposes. The copyright owner does not offer any warranties or
representations, nor do - they accept any liabilities with respect to them. --%>

<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form>
	<acme:form-textbox code="entrepreneur.application.form.label.title" path="ticker" readonly="true" />
	<acme:form-textbox code="entrepreneur.application.form.label.creation" path="creation" readonly="true" />
	<acme:form-textbox code="entrepreneur.application.form.label.statement" path="statement" readonly="true" />
	<acme:form-textbox code="entrepreneur.application.form.label.moneyOffer" path="moneyOffer" readonly="true" />
	<acme:form-textbox code="entrepreneur.application.form.label.investmentRound" path="investmentRound.ticker" readonly="true" />
	<acme:form-textbox code="entrepreneur.application.form.label.investor" path="investor.firstName" readonly="true" />
	<acme:form-select code="entrepreneur.application.form.label.status" path="status">
		<br>
		<acme:form-option code="entrepreneur.application.form.label.status.pending" value="pending" />
		<acme:form-option code="entrepreneur.application.form.label.status.accepted" value="accepted" />
		<acme:form-option code="entrepreneur.application.form.label.status.rejected" value="rejected" />
	</acme:form-select>

	<acme:form-return code="entrepreneur.application.form.button.return" />
</acme:form>
