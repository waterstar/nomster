require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "humanize_rating" do
  	Comment::RATINGS.each do |k,v|
  		hr = Comment.new(:rating => v).humanized_rating
  		assert_equal k,hr
  	end
  end
end
