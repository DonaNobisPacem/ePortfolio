require 'spec_helper'



feature "Signing in" do
  server = '202.92.140.40'

  before(:all) { 50.times do |count_helper| 
    User.create(:username => "user_#{count_helper}", :email => "user_#{count_helper}@example.com", :password => '12345678')
    end }

  scenario "Signing in as another user", :js => true do
    visit server
    for user_number in 0..50 do
        fill_in 'signin_user_login', :with => "user_#{user_number}@example.com"
        fill_in 'signin_user_password', :with => "12345678"
        click_button 'Login'
        page.has_button? 'Logout'
        click_button 'Logout'
        page.has_button? 'Login'
    end
  end
end
