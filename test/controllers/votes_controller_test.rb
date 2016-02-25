require 'test_helper'

class VotesControllerTest < ActionController::TestCase

  test "should get create" do
    assert_difference("Vote.count", 1) do
      bal1 = Balloter.create!(name: "Smithy", party: "Wrecken", token: SecureRandom.hex)
      can1 = Candidate.create!(name: "Smithy", party: "Remarican", hometown: "Houseville", district: "of Columbe")
      get :create, balloter_id: bal1.id, candidate_id: can1.id, token: bal1.token
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
