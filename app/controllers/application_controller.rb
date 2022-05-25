class ApplicationController < ActionController::API
  include TokenAuthenticateable
  include ErrorHandler
  before_action :authenticate_resource_from_token!

  def resource_name
    :api_user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:api_user]
  end
end
