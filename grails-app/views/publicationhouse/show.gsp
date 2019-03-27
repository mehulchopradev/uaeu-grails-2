
<%@ page import="com.example.libapp.Publicationhouse" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'publicationhouse.label', default: 'Publicationhouse')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-publicationhouse" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-publicationhouse" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list publicationhouse">
			
				<g:if test="${publicationhouseInstance?.books}">
				<li class="fieldcontain">
					<span id="books-label" class="property-label"><g:message code="publicationhouse.books.label" default="Books" /></span>
					
						<g:each in="${publicationhouseInstance.books}" var="b">
						<span class="property-value" aria-labelledby="books-label"><g:link controller="book" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${publicationhouseInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="publicationhouse.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${publicationhouseInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${publicationhouseInstance?.ratings}">
				<li class="fieldcontain">
					<span id="ratings-label" class="property-label"><g:message code="publicationhouse.ratings.label" default="Ratings" /></span>
					
						<span class="property-value" aria-labelledby="ratings-label"><g:fieldValue bean="${publicationhouseInstance}" field="ratings"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:publicationhouseInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${publicationhouseInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
