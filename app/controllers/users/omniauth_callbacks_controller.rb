class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
	def facebook #action should have the same name as the provider
	  @user = User.from_omniauth(request.env["omniauth.auth"])
	  sign_in_and_redirect @user
	  # TO DO
	end
end