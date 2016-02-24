require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "test votes have balloter" do
   bal1 = Balloter.create!(name: "johnson", candidate_id: 6, party: "Republican", token: "hello")
   bal2 = Balloter.create!(name: "janice", candidate_id: 7, party: "Democrat", token: "Yellow")
   bal3 = Balloter.create!(name: "Candace", candidate_id: 4, party: "Democlican", token: "Smart")
   can1 = Candidate.create!(name: "Smithy", party: "Remarican", hometown: "Houseville", district: "of Columbe")
   vote1 = Vote.create!(balloter_id: bal1.id, candidate_id: can1.id)
   assert_equal vote1.balloter.id, bal1.id
  end


  test "test votes have candidate" do
   can1 = Candidate.create!(name: "Smithy", party: "Remarican", hometown: "Houseville", district: "of Columbe")
   bal1 = Balloter.create!(name: "johnson", candidate_id: can1.id, party: "Republican", token: "hello")
   bal2 = Balloter.create!(name: "janice", candidate_id: 7, party: "Democrat", token: "Yellow")
   bal3 = Balloter.create!(name: "Candace", candidate_id: 4, party: "Democlican", token: "Smart")
   vote1 = Vote.create!(balloter_id: bal1.id, candidate_id: can1.id)
   assert_equal vote1.candidate.id, bal1.candidate_id
  end



end
