require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  #test "account_activation" do
   #assert_equal "Account activation", mail.subject
    #assert_equal ["to@example.org"], mail.to
    #assert_equal ["from@example.com"], mail.from
    #assert_match "Hi", mail.body.encoded
  #end

  def account_activation
    user = User.first
    user.activation_token = User.new_token
    UserMailer.account_activation(user)
  end

  #test "password_reset" do
   # mail = UserMailer.password_reset
    #assert_equal ["to@example.org"], mail.to
    #assert_equal ["from@example.com"], mail.from
    #assert_match "Hi", mail.body.encoded
  #end

  def password_reset
    UserMailer.password_reset
  end

end
