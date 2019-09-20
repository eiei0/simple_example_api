module V1
  class ContactsController < ApplicationController
    def create
      @contact = Contact.create!(contact_params)

      render locals: { contact: contact }
    end

    def update
      contact.update!(contact_params)

      render locals: { contact: contact }
    end

    def show
      render locals: { contact: contact }
    end

    def index
      contacts = Contact.all

      render locals: { contacts: contacts }
    end

    private

    def contact
      @contact ||= Contact.find(params[:id])
    end

    def contact_params
      params.permit(:first, :last, :age)
    end
  end
end
