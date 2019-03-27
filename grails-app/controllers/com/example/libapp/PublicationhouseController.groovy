package com.example.libapp



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PublicationhouseController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Publicationhouse.list(params), model:[publicationhouseInstanceCount: Publicationhouse.count()]
    }

    def show(Publicationhouse publicationhouseInstance) {
        respond publicationhouseInstance
    }

    def create() {
        respond new Publicationhouse(params)
    }

    @Transactional
    def save(Publicationhouse publicationhouseInstance) {
        if (publicationhouseInstance == null) {
            notFound()
            return
        }

        if (publicationhouseInstance.hasErrors()) {
            respond publicationhouseInstance.errors, view:'create'
            return
        }

        publicationhouseInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'publicationhouse.label', default: 'Publicationhouse'), publicationhouseInstance.id])
                redirect publicationhouseInstance
            }
            '*' { respond publicationhouseInstance, [status: CREATED] }
        }
    }

    def edit(Publicationhouse publicationhouseInstance) {
        respond publicationhouseInstance
    }

    @Transactional
    def update(Publicationhouse publicationhouseInstance) {
        if (publicationhouseInstance == null) {
            notFound()
            return
        }

        if (publicationhouseInstance.hasErrors()) {
            respond publicationhouseInstance.errors, view:'edit'
            return
        }

        publicationhouseInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Publicationhouse.label', default: 'Publicationhouse'), publicationhouseInstance.id])
                redirect publicationhouseInstance
            }
            '*'{ respond publicationhouseInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Publicationhouse publicationhouseInstance) {

        if (publicationhouseInstance == null) {
            notFound()
            return
        }

        publicationhouseInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Publicationhouse.label', default: 'Publicationhouse'), publicationhouseInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'publicationhouse.label', default: 'Publicationhouse'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
