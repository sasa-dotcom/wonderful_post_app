class MypageController < ApplicationController
  def show
    articles = current_user.articles
    articles = articles.where("title like?", "%#{params[:title]}%") if params[:title].present?

    @articles = articles.page params[:page]
  end
end
