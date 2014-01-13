# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


###
### Users
###

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
	        :first_name => 'John Thomas Raphael',
	        :last_name => 'Dulay',
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
	        :first_name => 'Test User',
	        :last_name => 'the 1st',
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
	        :first_name => 'Test User',
	        :last_name => 'the 2nd',
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
	        :first_name => 'Test User',
	        :last_name => 'the 3rd',
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
	        :first_name => 'Test User',
	        :last_name => 'the 4th',
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
	        :first_name => 'Test User',
	        :last_name => 'the 5th',
	        :gender => '0'
	      	}
	}
}
User.create!(params[:user])

###
### Projects ######################################################
###

params =
{  
	:project =>
	{
		:title => 'test project 1',
	    :description => 'test description 1 alpha beta gamma',
	    :contributor => 'John Thomas Raphael Dulay, Test User the 1st, Test User the 2nd',
	    :link => 'www.google.com',
	    :tag_list => 'tag1, tag2, tag3',
	    :gallery_attributes => {}
	}
}
Project.create!(params[:project])

params =
{  
	:project =>
	{
		:title => 'test project 2',
	    :description => 'test description 2 delta omega lamda',
	    :contributor => 'John Thomas Raphael Dulay, Test User the 3rd, Test User the 2nd',
	    :link => 'www.google.com',
	    :tag_list => 'tag4, tag2, tag3',
	    :gallery_attributes => {}
	}
}
Project.create!(params[:project])

params =
{  
	:project =>
	{
		:title => 'test project 3',
	    :description => 'test description 3 lambda theta phi',
	    :contributor => 'Test User the 5th, Test User the 1st, Test User the 2nd',
	    :link => 'www.google.com',
	    :tag_list => 'tag1, tag4, tag5',
	    :gallery_attributes => {}
	}
}
Project.create!(params[:project])

params =
{  
	:project =>
	{
		:title => 'test project 4',
	    :description => 'test description 4 alpha lambda omega',
	    :contributor => 'John Thomas Raphael Dulay, Test User the 4th, Test User the 5th',
	    :link => 'www.google.com',
	    :tag_list => 'tag4, tag2, tag3',
	    :gallery_attributes => {}
	}
}
Project.create!(params[:project])

params =
{  
	:project =>
	{
		:title => 'test project 5',
	    :description => 'test description 5 omega phi gamma',
	    :contributor => 'Test User the 3rd, Test User the 1st, Test User the 2nd',
	    :link => 'www.google.com',
	    :tag_list => 'tag1, tag4, tag5',
	    :gallery_attributes => {}
	}
}
Project.create!(params[:project])