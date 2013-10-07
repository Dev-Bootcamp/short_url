class UsersController < ApplicationController

  def index
    @users = User.all
    render :index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user].permit(:name))
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @url = Url.new
    render :show
  end

  def edit
   
  end

  def update
    
  end

  def destroy
    
  end


  private
    def post_params
      params.require(:user).permit(:name)
    end

end