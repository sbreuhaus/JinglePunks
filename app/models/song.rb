class Song < ActiveRecord::Base
  def self.search(search)
    where("tags ILIKE ?", "%#{search}%")
  end
end
