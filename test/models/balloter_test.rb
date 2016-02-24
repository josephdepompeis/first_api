require 'test_helper'

class BalloterTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "test balloters have votes" do
  can1 = Candidate.create!(name: "Smithy", party: "Remarican", hometown: "Houseville", district: "of Columbe")
   bal1 = Balloter.create!(name: "johnson", candidate_id: 6, party: "Republican", token: "hello")
   bal2 = Balloter.create!(name: "janice", candidate_id: 7, party: "Democrat", token: "Yellow")
   bal3 = Balloter.create!(name: "Candace", candidate_id: 4, party: "Democlican", token: "Smart")

   vote1 = Vote.create!(balloter_id: bal1.id, candidate_id: can1.id)
  #  byebug
   assert_equal bal1.votes.ids.to_s, "[#{vote1.id}]"

  end


  # test "test balloters have candidates" do
  #  bal1 = Balloter.create!(name: "johnson", candidate_id: 6, party: "Republican", token: "hello")
  #  bal2 = Balloter.create!(name: "janice", candidate_id: 7, party: "Democrat", token: "Yellow")
  #  bal3 = Balloter.create!(name: "Candace", candidate_id: 11, party: "Democlican", token: "Smart")
  #  can1 = Candidate.create!(name: "Smithy", party: "Remarican", hometown: "Houseville", district: "of Columbe")
  #  assert_equal bal3.candidate_id, bal3.candidate_id
  # end

end





  # test "test balloters validations - party- token and name" do
  #   bal1 = Balloter.create!(name: "johnson", candidate_id: 6, party: "Republican", token: "hello")
  #   bal2 = Balloter.create!(name: "janice", candidate_id: 7, party: "Democrat", token: "Yellow")
  #   bal3 = Balloter.create!(name: "Candace", candidate_id: 4, party: "Democlican", token: "Smart")
  #   bal4 = Balloter.create(name: "johnson", candidate_id: 6, party: "Republican")
  #   bal5 = Balloter.create(name: "janice", candidate_id: 7, token: "Yellow")
  #   bal6 = Balloter.create(candidate_id: 4, party: "Democlican", token: "Smart")
  #   assert bal1.id
  #   assert bal2.id
  #   assert bal3.id
  #   refute bal4.id
  #   refute bal5.id
  #   refute bal6.id
  # end





# def test_associate_balloter_and

# do association tests for each like below or like kate had
#


#
# def test_association_lessons_and_readings
#    reading1 = Reading.create!(order_number: 33, lesson_id: 1, url: "http://www.who-cares.com")
#    lesson1 = Lesson.create!(name: "Centaur's Ladder")
#   assert lesson1.readings << reading1
#   assert_equal lesson1.readings[0].id, reading1.id
#   refute_equal nil, lesson1.readings
# end



# end
