<%@ page import="com.example.libapp.Book" %>



<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="book.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" maxlength="20" required="" value="${bookInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'pages', 'error')} required">
	<label for="pages">
		<g:message code="book.pages.label" default="Pages" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="pages" type="number" value="${bookInstance.pages}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'price', 'error')} ">
	<label for="price">
		<g:message code="book.price.label" default="Price" />
		
	</label>
	<g:field name="price" value="${fieldValue(bean: bookInstance, field: 'price')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'publicationHouse', 'error')} required">
	<label for="publicationHouse">
		<g:message code="book.publicationHouse.label" default="Publication House" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="publicationHouse" name="publicationHouse.id" from="${com.example.libapp.Publicationhouse.list()}" optionKey="id" required="" value="${bookInstance?.publicationHouse?.id}" class="many-to-one"/>

</div>

