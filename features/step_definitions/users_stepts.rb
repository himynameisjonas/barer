Given /^a valid user$/ do
  @user = User.create!({
                  :login => "jonas",
                  :email => "jonas@example.com",
                  :password => "123456",
                  :password_confirmation => "123456"
                })
end

Given /^a logged in user$/ do
  Given "a valid user"
  visit login_url
  fill_in "Login", :with => "jonas"
  fill_in "Password", :with => "123456"
  click_button "Log in"
end