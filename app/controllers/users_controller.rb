class UsersController < ApplicationController
  def new
    @user = User.new
    @departments = Department.all
  end

  def create
    @user = User.new(user_params)
    @user.password = Faker::Internet.password(max_length: 8)
    @user.password_confirmation = @user.password

    if @user.save
      UserMailer.with(user: @user).welcome_email.deliver_now
      redirect_to root_path, notice: "Usuário criado com sucesso!"
    else 
      render :new, notice: "Não foi possível criar o usuário"
    end
  end

  private 

  def user_params
    params.require(:user).permit(:name, :acess, :email)
  end
end
