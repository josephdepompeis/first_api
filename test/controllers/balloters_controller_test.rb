require 'test_helper'

class BallotersControllerTest < ActionController::TestCase
  test "should get create" do
    assert_difference("Balloter.count", 1) do
      get :create, name: balloter(:One).name, party: balloter(:One).party
      assert_response :success
      end
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

end
