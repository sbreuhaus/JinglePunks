class Song < ActiveRecord::Base
  def self.search(search)
    where("tags LIKE ?", "%#{search}%")
  end
end
