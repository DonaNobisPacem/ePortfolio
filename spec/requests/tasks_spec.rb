require 'spec_helper'

describe "the signin process", :type => :feature do
  it "signs me in" do
    visit '/'
      fill_in 'signin_user_login', :with => 'donanobispacem'
      fill_in 'signin_user_password', :with => '07211994'
    
    click_button 'Login'
    page.has_button? 'Profile'
  end
end

feature "Signing in" do
  background do
    User.make(:email => 'user@example.com', :password => 'caplin')
  end

  scenario "Signing in with correct credentials" do
    visit '/'
    fill_in 'Login', :with => 'user@example.com'
    fill_in 'Password', :with => 'caplin'
    end
    click_button 'Login'
    page).has_button? 'Logout'
  end

  given(:other_user) { User.make(:email => 'other@example.com', :password => 'rous') }

  scenario "Signing in as another user" do
    visit '/sessions/new'
    within("#session") do
      fill_in 'Login', :with => other_user.email
      fill_in 'Password', :with => other_user.password
    end
    click_link 'Login'
    page).has_no_button? 'Logout'
  end
end
