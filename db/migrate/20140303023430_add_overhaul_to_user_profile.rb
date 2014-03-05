class AddOverhaulToUserProfile < ActiveRecord::Migration
  def change
    add_column :user_profiles, :skills, :string
    add_column :user_profiles, :achievements, :string
    add_column :user_profiles, :employment_history, :string
    add_column :user_profiles, :primary_education, :string
    add_column :user_profiles, :secondary_education, :string
    add_column :user_profiles, :tertiary_education, :string
    add_column :user_profiles, :vocational_education, :string
    add_column :user_profiles, :primary_education_grad, :integer    
    add_column :user_profiles, :secondary_education_grad, :integer
    add_column :user_profiles, :tertiary_education_grad, :integer
    add_column :user_profiles, :vocational_education_grad, :integer
    add_column :user_profiles, :permanent_address, :string
    add_column :user_profiles, :current_address, :string
    add_column :user_profiles, :primary_email, :string
    add_column :user_profiles, :mobile_number, :string
    add_column :user_profiles, :website_address, :string
    add_column :user_profiles, :others, :string
  end
end
