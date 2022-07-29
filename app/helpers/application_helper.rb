module ApplicationHelper
	def resource_name
		:user
	end

	def resource
		@resource ||= User.new
	end

	def devise_mapping
		@devise_mapping ||= Devise.mappings[:user]
	end

  #TODO -> replace in _admin_nav.html.erb
  def link_is_current_page(path)

  end
end
