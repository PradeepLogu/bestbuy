class HomeController < ApplicationController
	skip_before_action :authenticate_user!
	def index
		if user_signed_in?
			if current_user.role == "customers"
				redirect_to  visitors_index_path(:role => current_user.role)
			else
				redirect_to dashboard_index_path(:role => current_user.role)
			end
		end
	end
end
