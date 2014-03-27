class UserProfile < ActiveRecord::Base
  attr_accessible :name, :image, :gender, :user_id, :birthday, :first_name, :last_name, :featured_project, :featured_project_title, :skills, :achievements, :employment_history, :primary_education, :primary_education_grad, :secondary_education, :secondary_education_grad, :tertiary_education, :tertiary_education_grad, :vocational_education, :vocational_education_grad, :permanent_address, :current_address, :primary_email, :mobile_number, :website_address, :others

  belongs_to :user

  mount_uploader :image, ImageUploader


  def fullname
  	"#{first_name} #{last_name}"
  end

  def autocomplete_display
  	"#{first_name} #{last_name}"
  end
  
end
