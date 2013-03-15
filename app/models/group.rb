class Group < ActiveRecord::Base
  attr_accessible :description, :name, :contact_attributes

  has_many :memberships, :dependent => :destroy 
  has_many :contacts, :through => :memberships
  accepts_nested_attributes_for :contacts
end
