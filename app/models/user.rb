class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
       
  #validations
  validates :user_name, :presence => true, :uniqueness => true
  
  #Associations
  has_many :clients, :dependent => :destroy
  has_many :projects, :dependent => :destroy
end
