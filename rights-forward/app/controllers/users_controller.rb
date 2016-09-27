class UsersController < ApplicationController

  def index
    # @users = User.all
    # @users = User.search(params[:search]) old search
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true)
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def destroy
    User.destroy(params[:id])
    session[:user_id] = nil
    redirect_to(:back)
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to(:user)
  end

  private
    def user_params
    params.require(:user).permit(:name, :fullname, :contact, :bio,
      :affiliation, :trainings, skill_ids:[], language_ids:[], type_ids:[], expertise_ids:[])
  end

end





