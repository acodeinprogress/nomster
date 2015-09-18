require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  user = FactoryGirl.create(:user)

  test 'show success' do
    sign_in user
    get :show, :id => user.id
    assert_response :success
  end
end
