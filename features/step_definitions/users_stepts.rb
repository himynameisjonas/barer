Given /^a valid user$/ do
  @user = User.create!({
                  :display_name => "Jonas",
                  :email => "jonas@example.com",
                  :password => "123456",
                  :password_confirmation => "123456"
                })
end

Given /^I am a logged in user$/ do
  Given "a valid user"
  visit new_user_session_url
  fill_in "Email", :with => "jonas@example.com"
  fill_in "Password", :with => "123456"
  click_button "Sign in"
end