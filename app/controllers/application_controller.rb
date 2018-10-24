class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
	#prepend_before_action :require_no_authentication, only: [:new, :create, :cancel, :edit, :update], if: :devise_controller?
	#prepend_before_action :authenticate_scope!, only: [:destroy], if: :devise_controller?

	protected

	def configure_permitted_parameters
	   devise_parameter_sanitizer.permit(:sign_up, keys: [:employee_name, :company_id])
	   #devise_parameter_sanitizer.for(:account_update).push(:name, :surname, :email, :avatar)
	end

end
