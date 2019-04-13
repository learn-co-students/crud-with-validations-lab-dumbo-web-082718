class Song < ActiveRecord::Base
       validates :title, presence: true, allow_blank: false
       # Cannot be repeated by the same artist in the same year ???
       validates :release_year, presence: true, if :release?
       # validates :released, presence: true, if :release?

  def release?
    validates :released, presence: true
  end

end
