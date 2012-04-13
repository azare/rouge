class Review < ActiveRecord::Base
  attr_accessible :content, :restaurant_id, :reviewer_id, :title
  belongs_to :restaurant
  belongs_to :reviewer

  has_many :comments, :as => :commentable
end
