require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def test_can_create_restaurant_with_only_name
    Restaurant.create! :name => "Mediterraneo"
  end

  def test_can_instantiate_and_save_a_restaurant
    restaurant = Restaurant.new
    restaurant.name = "Mediterraneo"
    restaurant.description = <<DESC
One of the best Italian restaurants in the Kings Cross area,
Mediterraneo will never leave you disappointed
DESC
    restaurant.address = "1244 Kings Cross Road, London WC1X 8CC"
    restaurant.phone = "+44 1432 4444"

    restaurant.save!
  end

  def test_that_name_is_required
    restaurant = Restaurant.new
    assert !restaurant.valid?
  end
end
