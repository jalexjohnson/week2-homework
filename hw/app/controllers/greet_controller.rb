class GreetController < ApplicationController
	def salutation
		if params["salutation"]
			@salutation = params["salutation"]
		else
			@salutation = "Hello"
		end
	end
end

