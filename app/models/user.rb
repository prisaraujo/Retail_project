class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  belongs_to :city
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # attr_accessible :email, :password, :password_confirmation

  validates :first_name, presence: true

  validates :last_name, presence: true

  validates :profile_name, presence: true, uniqueness: true, 
                                          format:{
                                            with: /\A[a-zA-Z0-9_-]+\z/,
                                            message: "Must be formatted correctly."
                                          }                                        
  def full_name
  	first_name + " " + last_name
  end
end
