class UserMailer < ApplicationMailer
  def welcome_email
    @user = params[:user]
    @password = params[:password]
    mail(to: @user.email, subject: "Bem-vindo! Sua senha temporária:")
  end
end
