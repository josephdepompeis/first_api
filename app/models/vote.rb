class Vote < ActiveRecord::Base
  belongs_to :balloter
  belongs_to :candidate

  validates :balloter_id, presence: true
  validates :candidate_id, presence: true
end
