<%@ page import="com.example.libapp.Publicationhouse" %>



<div class="fieldcontain ${hasErrors(bean: publicationhouseInstance, field: 'books', 'error')} ">
	<label for="books">
		<g:message code="publicationhouse.books.label" default="Books" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${publicationhouseInstance?.books?}" var="b">
    <li><g:link controller="book" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="book" action="create" params="['publicationhouse.id': publicationhouseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'book.label', default: 'Book')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: publicationhouseInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="publicationhouse.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${publicationhouseInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: publicationhouseInstance, field: 'ratings', 'error')} required">
	<label for="ratings">
		<g:message code="publicationhouse.ratings.label" default="Ratings" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ratings" type="number" value="${publicationhouseInstance.ratings}" required=""/>

</div>

