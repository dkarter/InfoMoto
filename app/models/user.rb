class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first, :last, :username,
                  :dob, :city, :street, :state, :years_riding, :avatar
  
  has_attached_file :avatar, styles: { :medium => "300x300>", :thumb => "100x100>" }
	
	has_many :bikes
	has_many :rides
end
