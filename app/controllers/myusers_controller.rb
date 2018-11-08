class MyusersController < ApplicationController
  def index
    # puts "#{params.inspect}"
    @users = Myuser.paginate(page: params[:page], per_page: 3)
  end

  def new
    @user = Myuser.new
  end

  def create
    @user = Myuser.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the blog #{@user.username}"
      redirect_to myarticles_path
    else
      render 'new'
    end
  end

  def edit
    @user = Myuser.find(params[:id])

  end

  def show
    @user = Myuser.find(params[:id])
    @articles = @user.myarticles.paginate(page: params[:page], per_page: 2)
  end

  # edit form action will be handled by update function
  def update
    @user = Myuser.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "Your account was updated successfully"
      redirect_to myarticles_path
    else
      render 'edit'
    end
  end


  private
  def user_params
    params.require(:myuser).permit(:username, :email, :password)
  end
end
