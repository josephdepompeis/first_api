require 'test_helper'

class CandidatesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get create" do
    assert_difference("Candidate.count", 1) do


      get :create, id: candidate(:One).id, name: candidate(:One).name, hometown: candidate(:One).hometown, district: candidate(:One).district, party: candidate(:One).party
      assert_response :success
  end
  end

end
