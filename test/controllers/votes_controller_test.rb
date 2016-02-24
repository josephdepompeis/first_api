require 'test_helper'

class VotesControllerTest < ActionController::TestCase
  test "should get create" do
    bal1 = Balloter.create!(name: "Candace", party: "Democlican", token: "Smart")
    can1 = Candidate.create!(name: "Smithy", party: "Remarican", hometown: "Houseville", district: "of Columbe")
    vote1 = Vote.create!(balloter_id: bal1.id, candidate_id: can1.id)


    post :create
    assert_response :success
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
