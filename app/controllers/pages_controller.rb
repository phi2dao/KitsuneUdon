class PagesController < ApplicationController
	def home
		@title = "Home"
	end

	def help
		@title = "Help"
	end

	def output
		if params[:data][:source].empty?
			flash.now[:error] = "Please provide a language file"
			@title = "Home"
			render 'home'
		else
			result = Kotodama::GRAMMAR.parse params[:data][:source]
			if result.parsed?
				@title = "Output"
				@output = []
				if params[:data][:times].empty?
					times = 1
				elsif params[:data][:times].match /\D/
					flash.now[:error] = "Please provide a valid number"
					@title = "Home"
					render 'home'
				else
					times = params[:data][:times].to_s
				end
				times.times { @output << result.result.generate }
			else
				flash.now[:error] = result.error
				@title = "Home"
				render 'home'
			end
		end
	end
end
