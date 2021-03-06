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
	<acme:form-textbox code="administrator.tool.form.label.title" path="title" />


	<acme:form-select code="administrator.tool.form.label.sector" path="sector.sector">
		<jstl:forEach items="${sectorsAvailable}" var="name">
			<jstl:if test="${sectorName == name}">
				<acme:form-option code="${name}" selected="true" value="${name}"/>
			</jstl:if>
			<jstl:if test="${sectorName != name}">
				<acme:form-option code="${name}" selected="false" value="${name}"/>
			</jstl:if>
		</jstl:forEach>
	</acme:form-select>
	<acme:form-textbox code="administrator.tool.form.label.investorName" path="investorName" />
	<acme:form-textarea code="administrator.tool.form.label.description" path="description" />
	<acme:form-url code="administrator.tool.form.label.web" path="web" />
	<acme:form-email code="administrator.tool.form.label.email" path="email" />
	<acme:form-checkbox code="administrator.tool.form.label.openSource" path="openSource" />
	<acme:form-integer code="administrator.tool.form.label.stars" placeholder="0...5" path="stars" />

	<acme:form-submit test="${command == 'create'}" code="administrator.tool.form.button.create"
		action="/administrator/tool/create" />
	<acme:form-submit test="${command == 'show'}" code="administrator.tool.form.button.update"
		action="/administrator/tool/update" />
	<acme:form-submit test="${command == 'show'}" code="administrator.tool.form.button.delete"
		action="/administrator/tool/delete" />
	<acme:form-submit test="${command == 'update'}" code="administrator.tool.form.button.update"
		action="/administrator/tool/update" />
	<acme:form-submit test="${command == 'delete'}" code="administrator.tool.form.button.delete"
		action="/administrator/tool/delete" />
	<acme:form-return code="administrator.tool.form.button.return" />

</acme:form>