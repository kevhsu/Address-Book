class Contact < ActiveRecord::Base
  attr_accessible :address, :email, :firstname, :lastname, :phone

  has_many :memberships, :dependent => :destroy
  has_many :groups, :through => :memberships
end
