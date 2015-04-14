class RpsController < ApplicationController
	def start
	end
	def play
		@choice = params["choice"]
		@opponent = ["rock","paper","scissors"].sample
		if @choice == "rock"
			if @opponent == "rock"
				@outcome = "It's a tie!"
			elsif @opponent == "paper"
				@outcome = "You lose!"
			else #scissors
				@outcome = "You win!"
			end
		elsif @choice == "paper"
			if @opponent == "rock"
				@outcome = "You win!"
			elsif @opponent == "paper"
				@outcome = "It's a tie!"
			else #scissors
				@outcome = "You lose!"
			end
		else #scissors
			if @opponent == "rock"
				@outcome = "You lose!"
			elsif @opponent == "paper"
				@outcome = "You win!"
			else #scissors
				@outcome = "It's a tie!"
			end
		end
	end
end