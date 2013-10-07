class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # ADD CURRENT_USER METHOD
  def current_user
    @user = User.find(params[:user_id])
  end

  def index
    render :index
    
  end
end
