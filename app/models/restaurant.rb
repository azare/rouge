class Restaurant < ActiveRecord::Base
  attr_accessible :address, :description, :name, :phone
  validates_presence_of :name

  has_many :reviews
  has_many :comments, :as => :commentable
end
