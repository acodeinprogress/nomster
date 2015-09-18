require 'test_helper'

class CommentTest < ActiveSupport::TestCase

  test 'humanized rating' do
    comment = Comment.new(:message => 'awesome!', :rating => '5_star')
    assert_equal 'five star', comment.humanized_rating
  end
end
