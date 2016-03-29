module ApplicationHelper
	def full_title(page_title = '')
		base_title = "bingBing"
		if page_title.empty?
			base_title + " | Search your image" 
		else
			base_title + " | " + page_title
		end
	end
end
