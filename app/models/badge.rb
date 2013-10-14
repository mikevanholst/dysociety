class Badge < ActiveRecord::Base
  has_many :users, through: :sash
end
