class ApplicationController < ActionController::Base
  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def voted?(article)
    current_user.voted_articles.exists?(article.id)
  end
  helper_method :voted?

  def require_user
    redirect_to login_path unless current_user
  end
end
