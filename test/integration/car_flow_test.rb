require "test_helper"

class CarFlowTest < ActionDispatch::IntegrationTest
  
  setup do
    sign_in users(:mariusz)
    @car = cars(:two)
    # @car = cars :one
  end

  test 'Car Has Show Button' do
    get cars_path
    # get new_car_path
    # get "/cars"
    assert_select 'a', 'Show this car', 1
  end

  # test 'Show Has Edit and Delete Buttons' do
  #   get root_path(@car)
  #   assert_select 'a', 'Edit', 1
  #   assert_select 'a', 'Delete', 1
  # end
end




































# ===============
  # test "can create a new car" do
  #   # get "/cars/new"
  #   get new_car_url    
  #   assert_response :success
  # end
  
  #   # post "/cars",
  #     # params: { car: { brand: "Toyota", carmodel: "Yaris", year: 2022, body: "Some description", price: 100 } }
    
  #   post cars_url,
  #   # params: { car: { brand: @car.brand, carmodel: @car.carmodel, body: @car.body, price: @car.price, year: @car.year, status: @car.status } }
  #   params: { car: { brand: "Toyota", carmodel: "Yaris", year: 2022, body: "Some description", price: 100, status: "public" } }
  #   assert_response :redirect
  #   follow_redirect!
  #   assert_response :success
  #   assert_select "a", "New Car"
  # end  
# end

# =============
# test "can see the welcome page" do
#   get "/"
#   assert_select "h1", "Car Rental Home Page"
# end

# test "can show car list" do
#   get cars_url
#   assert_response :success
# end