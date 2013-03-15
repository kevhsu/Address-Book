class Group < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :memberships, :dependent => :destroy 
  has_many :contacts, :through => :memberships

end
