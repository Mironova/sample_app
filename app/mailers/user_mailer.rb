class UserMailer < ActionMailer::Base
  default from: "iradilema@gmail.com"

  def follow_notification(user, follower)
  	@user = user
  	@follower = follower 
  	mail(to: @user.email, subject: 'Follow notification')
  end
end
