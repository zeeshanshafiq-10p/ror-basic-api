class Api::V1::ArticlesController < ApplicationController

  def index
    user = User.includes(:articles).find_by_name(params[:name])
    if user
      render json: user.as_json(only: [], methods: [:owner_name], include: {articles: {only: [:id,:price,:description]}})
    else
      not_found_renderer(message: "User Not Found")
    end
  end

  def show
    article = Article.find(params[:id])
    if article
      render json: article.as_json(only: [:id,:price,:description], methods: [:owner_name])
    else
      not_found_renderer(message: "Article Not Found")
    end
  end
end