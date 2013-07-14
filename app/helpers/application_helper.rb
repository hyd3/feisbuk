module ApplicationHelper

	def flash_class(type)
		case type
		when :alert
			"alert"
		when :notice
			"notice"
		else
			""
		end
	end

end
