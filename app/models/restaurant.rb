class Restaurant < ActiveRecord::Base
  attr_accessible :address, :description, :name, :phone
  validates_presence_of :name
end
