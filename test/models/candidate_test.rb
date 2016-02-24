require 'test_helper'

class CandidateTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "test candidates have votes" do
   bal1 = Balloter.create!(name: "johnson", candidate_id: 6, party: "Republican", token: "hello")
   bal2 = Balloter.create!(name: "janice", candidate_id: 7, party: "Democrat", token: "Yellow")
   bal3 = Balloter.create!(name: "Candace", candidate_id: 4, party: "Democlican", token: "Smart")
   can1 = Candidate.create!(name: "Smithy", id: 11)
   vote1 = Vote.create!(balloter_id: bal1.id, candidate_id: can1.id)
   assert_equal can1.votes.ids.to_s, "[#{vote1.id}]"
  end

  test "test candidates have balloters" do
   bal1 = Balloter.create!(name: "johnson", candidate_id: 6, party: "Republican", token: "hello")
   bal2 = Balloter.create!(name: "janice", candidate_id: 7, party: "Democrat", token: "Yellow")
   bal3 = Balloter.create!(name: "Candace", candidate_id: 11, party: "Democlican", token: "Smart")
   can1 = Candidate.create!(name: "Smithy", id: 11)
   assert_equal can1.balloters.ids.to_s, "[#{bal3.id}]"

  end





end
