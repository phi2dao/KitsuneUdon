class PagesController < ApplicationController
	def home
		@title = "Home"
	end

	def help
		@title = "Help"
	end

	def output
		@title = "Output"
	end
end
