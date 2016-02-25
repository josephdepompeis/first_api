require 'test_helper'
require 'securerandom'

class BallotersControllerTest < ActionController::TestCase
  test "should get create" do
    assert_difference("Balloter.count", 1) do
      get :create, name: balloter(:One).name, party: balloter(:One).party
      assert_response :success
      end
  end

  test "should get show" do
      bal1 = Balloter.create!(name: "Smithy", party: "Wrecken", token: SecureRandom.hex)
    get :show, token: bal1.token
    assert_response :success
  end


  test "should get update" do
    bal1 = Balloter.create!(name: "Smithy", party: "Wrecken", token: SecureRandom.hex)
    get :update, token: bal1.token, name:"BONGI"
    assert_equal "BONGI", Balloter.find(bal1.id).name
  end
end
