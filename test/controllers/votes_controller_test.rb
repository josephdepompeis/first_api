require 'test_helper'

class VotesControllerTest < ActionController::TestCase

  test "should get create" do
    assert_difference("Vote.count", 1) do
      get :create, balloter_id: vote(:One).balloter_id, candidate_id: vote(:One).candidate_id
      assert_response :success
      end
  end



  test "should get destroy" do
    get :destroy
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
