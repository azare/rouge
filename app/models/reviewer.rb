class Reviewer < ActiveRecord::Base
  attr_accessible :description, :name, :password, :username
end
