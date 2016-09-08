class UsersController < ApplicationController

  def new
    @user = User.new
  end
  # /users/new --> get

  # create
  def create
    @user = User.create(user_params)
    # /users --> post
  end

  # index
  def index
    @users = User.all
    # /users --> get
  end

  # show
  def show
    @user = User.find(params[:id])
    # /users/:id --> show
  end

  # edit
  def edit
    @user = User.find(params[:id])
    # /users/:id/edit --> get
  end

  # update
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    # /users/:id --> patch
  end

  # destroy
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    # /users/:id --> delete
  end

end


# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
