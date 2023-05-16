class School < ApplicationRecord
  has_many :students
  def self.ordered
    School.order(created_at: :desc)
  end

end