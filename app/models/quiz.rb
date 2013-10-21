class Quiz < ActiveRecord::Base
  belongs_to :chapter
  belongs_to :scorecard
  has_many :questions

  accepts_nested_attributes_for :questions
end
