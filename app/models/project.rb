class Project < ActiveRecord::Base
  #Associations
  belongs_to :user
  belongs_to :client
  
  #validations
  validates :name, :presence => true, :uniqueness => true
end
