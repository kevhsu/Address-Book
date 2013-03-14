class Group < ActiveRecord::Base
  attr_accessible :description, :name, :contact_id

  has_many :contact_ids
end
