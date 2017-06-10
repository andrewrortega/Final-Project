class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  devise_group :person, contains: [:user, :walker]
  # before_action :authenticate_person! # Ensure someone is logged in

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
    def configure_permitted_parameters
       devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name, :dog_name, :dog_breed, :location, :years_of_experience, :bio, :contact, :avatar])

       devise_parameter_sanitizer.permit(:account_update, keys: [:username, :first_name, :last_name, :dog_name, :dog_breed, :location, :years_of_experience, :bio, :contact, :avatar])

    end
end
