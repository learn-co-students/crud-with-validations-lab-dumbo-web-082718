class Song < ActiveRecord::Base
       validates :title, presence: true
       # Cannot be repeated by the same artist in the same year ???
       #validates :release_year, presence: true, if: :released?
       validates :title, uniqueness: { scope: [:release_year, :artist_name] }
       validates :released, inclusion: { in: [true, false]}
       with_options if: :released? do |song|
          song.validates :release_year, presence: true
          song.validates :release_year, numericality: {less_than_or_equal_to: Date.today.year}
       end
       #validates :released, presence: true
  def released?
     released
  end


end
