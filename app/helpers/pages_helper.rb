module PagesHelper
	def title
		if @title
			"KitsuneUdon | #{@title}"
		else
			"KitsuenUdon"
		end
	end
	
	def lang_source
		if params.key? :data
			params[:data][:source]
		end
	end
	
	def lang_times
		if params.key? :data
			params[:data][:times]
		end
	end
end
