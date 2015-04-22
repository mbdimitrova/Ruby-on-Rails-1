require 'test_helper'

class BrandsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "shoild get count" do
    get :count
    assert_response :success
  end
end
