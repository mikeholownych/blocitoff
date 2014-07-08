class AdminMailer < ActionMailer::Base
  default from: "mike.holownych@gmail.com"

  def user_added
    mail(:to => "mike.holownych@gmail.com", :subject => "New User Added to BlocItOff")
  end
end
