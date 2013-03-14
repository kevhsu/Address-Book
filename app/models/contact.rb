class Contact < ActiveRecord::Base
  attr_accessible :address, :email, :firstname, :lastname, :phone
end
