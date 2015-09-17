require 'test_helper'

class CommentTest < ActiveSupport::TestCase

  user = FactoryGirl.create(:user)

  test 'humanized rating' do
    comment = Comment.new(:message => 'awesome!', :rating => '5_star', :user_id => user.id)
    assert_equal 'five star', comment.humanized_rating
  end
end
