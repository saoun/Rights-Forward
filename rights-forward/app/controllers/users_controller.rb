class UsersController < ApplicationController

  def index
    # @users = User.all

  end

  def showall
    @users = User.search(params[:search])
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

  # def profileShow
  #   @user = User.find_by(id: params[:id])
  # end

  # def profileEdit
  #   @user = User.find_by_id(params[:id])
  # end


  private
# first one
    def user_params
    params.require(:user).permit(:fullname, :contact, :bio,
      :affiliation, :trainings)
  end

  # def user_params
  #   params.require(:user).permit(:fullname, :contact, :bio,
  #     :affiliation, :trainings, :skills, :languages, :expertise)
  # end

  #   def user_params
  #   params.require(:user).permit(:fullname, :contact, :bio,
  #     :affiliation, :trainings, skills:[], languages:[], expertise:[], type:[])
  # end
  # checkbox

end




