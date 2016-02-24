class Balloter < ActiveRecord::Base
  belongs_to :candidate
  has_many :votes

  # validates :name, presence: true
  # validates :party, presence: true
  # validates :token, presence: true

end
