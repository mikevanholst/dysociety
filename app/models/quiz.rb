class Quiz < ActiveRecord::Base
  belongs_to :chapter
  belongs_to :scorecard
  has_many :questions
end
