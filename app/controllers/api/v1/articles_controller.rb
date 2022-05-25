class Api::V1::ArticlesController < ApplicationController

  def index
    user = User.includes(:articles).find_by_name(params[:name])
    render json: user.as_json(only: [], methods: [:owner_name], include: {articles: {only: [:id,:price,:description]}})
  end

  def show
    article = Article.find(params[:id])
    render json: article.as_json(only: [:id,:price,:description], methods: [:owner_name])
  end
end