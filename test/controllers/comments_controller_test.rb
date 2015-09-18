require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test 'post comment' do
    user = FactoryGirl.create(:user)
    sign_in user
    place = FactoryGirl.create(:place, :user => user)

    assert_difference 'Comment.count' do
      post :create, {:place_id => place.id, :comment => { :message => 'Fantastic', :rating => '5_stars' }}
    end
    
    last_comment = Comment.last
    assert_equal 'Fantastic', last_comment.message
    assert_equal '5_stars', last_comment.rating

    assert_redirected_to place_path(place)
  end
end
