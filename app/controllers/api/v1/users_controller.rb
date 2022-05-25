class Api::V1::UsersController < ApplicationController

  def index
    users = User.select(:name)
    render json: {owners: users.as_json(only: :name)}
  end

  def show
    user = User.find_by_name(params[:name])
    render json: {owner_name: user.try(:name)}
  end
end