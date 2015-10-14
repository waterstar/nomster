require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "add comment" do
  	u = FactoryGirl.create(:user)
  	sign_in u 
  	p = FactoryGirl.create(:place)

  	assert_difference 'Comment.count' do
  	  post :create, 
  	       :place_id => p.id,
  	       :comment => { message: "wow", rating: "5_stars" }
    end
    assert_redirected_to place_path :id => p.id
    assert_equal 1, u.comments.count
  end
end
