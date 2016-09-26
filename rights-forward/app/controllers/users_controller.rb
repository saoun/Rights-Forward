class UsersController < ApplicationController

  def index
    # @users = User.all
  end


  # def search
  #   showall
  #   render :showall
  # end

  def showall
    byebug
    @search = User.search(params[:q])
    @users = @search.result(distinct: true)
    # @users = User.search(params[:search])
    # # @users = User.all
    # @search = User.search(params[:q])
    # @users = @search.result
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

# def update
#     respond_to do |format|
#       if @professor.update(professor_params)
#         format.html { redirect_to @professor, notice: 'Professor was successfully updated.' }
#         format.json { render :show, status: :ok, location: @professor }
#       else
#         format.html { render :edit }
#         format.json { render json: @professor.errors, status: :unprocessable_entity }
#       end
#     end
#   end



  private
# first one
    def user_params
    params.require(:user).permit(:fullname, :contact, :bio,
      :affiliation, :trainings, skills_ids:[], languages_ids:[], types_ids:[], expertises_ids:[])
  end

  def set_user
    @user = User.find(params[:id])
  end

end





