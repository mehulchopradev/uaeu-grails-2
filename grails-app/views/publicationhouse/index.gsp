
<%@ page import="com.example.libapp.Publicationhouse" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'publicationhouse.label', default: 'Publicationhouse')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-publicationhouse" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-publicationhouse" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'publicationhouse.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="ratings" title="${message(code: 'publicationhouse.ratings.label', default: 'Ratings')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${publicationhouseInstanceList}" status="i" var="publicationhouseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${publicationhouseInstance.id}">${fieldValue(bean: publicationhouseInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: publicationhouseInstance, field: "ratings")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${publicationhouseInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
