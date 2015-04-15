class DiceController < ApplicationController
	def start
	end
	def roll
		@die1 = [1,2,3,4,5,6].sample
		@die2 = [1,2,3,4,5,6].sample
		@sum = @die1 + @die2
		if params["goal"] #not the first roll
			@goal = params["goal"].to_i
			if @sum == 7
				@message = "You lose."
				@link = "/dice"
				@link_text = "Play again"
			elsif @sum == @goal
				@message = "YOU WIN!"
				@link = "/dice"
				@link_text = "Play again"
			else
				@message = "Your goal is #{@goal} but you rolled #{@sum}. You can roll again."
				@link = "/dice/roll?goal=#{@goal}"
				@link_text = "Roll again"
			end
		else #first roll
			case @sum
			when 7,11
				@message = "YOU WIN!"
				@link = "/dice"
				@link_text = "Play again"
			when 2,3,12
				@message = "You lose."
				@link = "/dice"
				@link_text = "Play again"
			else
				@message = "Your goal is now #{@sum}. Try to get #{@sum} again before you roll a 7."
				@link = "/dice/roll?goal=#{@sum}"
				@link_text = "Roll again"
			end
		end		
	end
end