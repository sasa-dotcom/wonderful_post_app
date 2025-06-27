class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  @articles = Article.all.page @params[:page]
end
