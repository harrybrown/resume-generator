class School < ActiveRecord::Base
  belongs_to :user
  has_many :school_achievements
end
