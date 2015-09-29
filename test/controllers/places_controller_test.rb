require 'test_helper'

class PlacesControllerTest < ActionController::TestCase

  test "show an entry" do
  	place = FactoryGirl.create(:place)
  	get :show, :id => place.id
  	assert_response :success
  end
end
