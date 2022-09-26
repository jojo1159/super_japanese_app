class UsersController < ApplicationController
  before_action :set_user, only: %i[show update destroy]

  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
  
        # Sends email to user when user is created.
        ExampleMailer.sample_email(@user).deliver
  
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def set_user
    @user = User.find(params[:id])
  end

  # def user_params
  #   params.require(:user).permit(
  #     :name,
  #     :address
  #   )
  # end
end
