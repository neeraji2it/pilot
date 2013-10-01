class Client < ActiveRecord::Base
  #validations
  validates :first_name, :last_name, :presence => true
  
  validates :email, :presence => true
  
  #Associations
  belongs_to :user
  has_many :projects, :dependent => :destroy
  
  
end
