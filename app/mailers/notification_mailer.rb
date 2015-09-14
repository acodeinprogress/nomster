class NotificationMailer < ActionMailer::Base
  default from: "no-reply@acodeinprogress.rocks"

  def comment_added 
    mail(to: "sjsieg830@gmail.com",
         subject: "A comment has been added to your place.")
  end
end
