class Review < ActiveRecord::Base
  attr_accessible :content, :restaurant_id, :reviewer_id, :title
end
