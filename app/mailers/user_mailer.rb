class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    @user = user  # Instance variable => available in view

    mail(to: @user.email, subject: 'Welcome to Zaina !')
    # This will render a view in `app/views/user_mailer`!
  end

  def advisor(projectmember)
    @user = projectmember.project.user  # Instance variable => available in view
    @project = projectmember.project
    @advisor = projectmember.user

    mail(to: @user.email, subject: 'You have an advisor !')
    # This will render a view in `app/views/user_mailer`!
  end

end
