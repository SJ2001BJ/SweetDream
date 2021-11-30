class ApplicationController < ActionController::Base
	before_action :authenticate_user!


  #admin
	#def authorize_admin
	#	redirect_to :back, status: 401 unless current_user.admin
#  end

end
