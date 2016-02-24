class Candidate < ActiveRecord::Base
has_many :votes
has_many :balloters

validates :name, presence: true
validates :hometown, presence: true
validates :district, presence: true
validates :party, presence: true
#validation for name htown district party




end
