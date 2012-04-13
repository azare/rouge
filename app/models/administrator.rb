class Administrator < ActiveRecord::Base
  attr_accessible :password, :username
end
