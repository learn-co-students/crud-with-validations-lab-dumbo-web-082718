class Song < ActiveRecord::Base

  validates :title, presence: true, uniqueness: true
  validates :released, inclusion: {in: [true, false]}
  validates :artist_name, presence: true
  validates :release_year, numericality: { less_than_or_equal_to: Time.now.year }, if: Proc.new { |a| a.released }

end
