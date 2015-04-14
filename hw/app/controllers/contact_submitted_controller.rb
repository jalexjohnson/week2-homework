class ContactSubmittedController < ApplicationController
	def display
		@first = params["first"]
		@last = params["last"]
	end
end