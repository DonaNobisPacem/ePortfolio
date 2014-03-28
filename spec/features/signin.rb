require 'spec_helper'  

describe "the signin process", :type => :feature do

  it "signs me in" do
    visit '/'
    within("#home") do
      fill_in 'signin_user_login', :with => 'donanobispacem'
      fill_in 'signin_user', :with => '07211994'
    end
    click_link 'Login'
    expect(page).to have_content 'Profile'
  end
end
