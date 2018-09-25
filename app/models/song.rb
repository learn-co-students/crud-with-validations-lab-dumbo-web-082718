class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :artist_name, presence: true
  validates :title, uniqueness: true
  validates :released, inclusion: {in: [true, false]}
  validates :release_year, numericality: { less_than_or_equal_to: Time.now.year},
  if: Proc.new {|song| song.released == true}
end
