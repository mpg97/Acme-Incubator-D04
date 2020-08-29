<%--
- form.jsp
-
- Copyright (c) 2019 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form>
	<acme:form-textbox code="entrepreneur.investment-round.form.label.ticker" path="ticker" />
	<acme:form-textbox code="entrepreneur.investment-round.form.label.creationDate" path="creationDate" />
	<acme:form-textbox code="entrepreneur.investment-round.form.label.title" path="title" />
	<acme:form-textbox code="entrepreneur.investment-round.form.label.description" path="description" />
	<acme:form-textbox code="entrepreneur.investment-round.form.label.amount" path="amount" />
	<acme:form-textbox code="entrepreneur.investment-round.form.label.moreInfo" path="moreInfo" />
	<acme:form-textbox code="entrepreneur.investment-round.form.label.kindRound" path="kindRound" />
	<acme:form-select code="entrepreneur.investment-round.form.label.kindRound" path="kindRound">
		<br>
		<acme:form-option code="entrepreneur.application.form.label.status.seed" value="SEED" />
		<acme:form-option code="entrepreneur.application.form.label.status.bridge" value="BRIDGE" />
		<acme:form-option code="entrepreneur.application.form.label.status.seriesa" value="SERIESA" />
		<acme:form-option code="entrepreneur.application.form.label.status.seriesb" value="SERIESB" />
		<acme:form-option code="entrepreneur.application.form.label.status.seriesc" value="SERIESC" />
		<acme:form-option code="entrepreneur.application.form.label.status.angel" value="ANGEL" />

	</acme:form-select>

	<acme:form-textbox code="entrepreneur.investment-round.form.label.entrepreneur.startUpName" path="entrepreneur.startUpName" />
	<acme:form-checkbox code="entrepreneur.investment-round.finalMode" path="finalMode" />

	<acme:form-return code="entrepreneur.investment-round.form.button.return" />
</acme:form>
