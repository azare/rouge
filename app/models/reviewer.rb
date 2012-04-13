class Reviewer < ActiveRecord::Base
  attr_accessible :description, :name, :password, :username
  has_many :reviews
end
