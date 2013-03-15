class Contact < ActiveRecord::Base
  attr_accessible :address, :email, :firstname, :lastname, :phone, :contact_ids, :group_ids

  has_many :memberships, :dependent => :destroy
  has_many :groups, :through => :memberships

  accepts_nested_attributes_for :groups
end
