class ContactsController < ApplicationController

	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(contact.params)
		if contact.save
			flash[:success]="Message Sent."
			redirect_to new_contact_path
		else
			flash[:danger]="Error occure, message not sent!"
			redirect_to new_contact_path
	end

end