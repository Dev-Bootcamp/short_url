class UrlsController < ApplicationController

  def index
    redirect_to ("/users/#{params[:user_id]}")
  end

  def create
    @user = User.find(params[:url][:user_id])
    @url = Url.new(user_id: params[:url][:user_id], long: params[:url][:long])
    
    @url.newurl
  
    if @url.save
      redirect_to @user
    else
      render :new
    end
  end

  def new
    @url = Url.new
  end

  def show
    redirect_to :index
  end

  def edit
   
  end

  def update
    
  end

  def destroy
    
  end


  private
    def post_params
      params.require(:url).permit(:user_id, :long, :short)
    end

end