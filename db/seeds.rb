# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

params =
{  
	:user =>
	{
		:username => 'donanobispacem',
	    :email => 'johnthomasraphael@yahoo.com',
	    :password => '07211994',
	    :password_confirmation => '07211994',
	    :user_profile_attributes => 
	    	{
	        :name => 'John Thomas Raphael Dulay',
	        :gender => '1'
	      	}
	}
}
User.create!(params[:user])

params =
{  
	:user =>
	{
		:username => 'testuser1',
	    :email => 'testuser1@yahoo.com',
	    :password => '12345678',
	    :password_confirmation => '12345678',
	    :user_profile_attributes => 
	    	{
	        :name => 'Test User the 1st',
	        :gender => '1'
	      	}
	}
}
User.create!(params[:user])

params =
{  
	:user =>
	{
		:username => 'testuser2',
	    :email => 'testuser2@yahoo.com',
	    :password => '12345678',
	    :password_confirmation => '12345678',
	    :user_profile_attributes => 
	    	{
	        :name => 'Test User the 2nd',
	        :gender => '1'
	      	}
	}
}
User.create!(params[:user])

params =
{  
	:user =>
	{
		:username => 'testuser3',
	    :email => 'testuser3@yahoo.com',
	    :password => '12345678',
	    :password_confirmation => '12345678',
	    :user_profile_attributes => 
	    	{
	        :name => 'Test User the 3rd',
	        :gender => '1'
	      	}
	}
}
User.create!(params[:user])

params =
{  
	:user =>
	{
		:username => 'testuser4',
	    :email => 'testuser4@yahoo.com',
	    :password => '12345678',
	    :password_confirmation => '12345678',
	    :user_profile_attributes => 
	    	{
	        :name => 'Test User the 4th',
	        :gender => '0'
	      	}
	}
}
User.create!(params[:user])

params =
{  
	:user =>
	{
		:username => 'testuser5',
	    :email => 'testuser5@yahoo.com',
	    :password => '12345678',
	    :password_confirmation => '12345678',
	    :user_profile_attributes => 
	    	{
	        :name => 'Test User the 5th',
	        :gender => '0'
	      	}
	}
}
User.create!(params[:user])