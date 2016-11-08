class Song < ActiveRecord::Base

  require 'csv'

  csv_text = File.read(Rails.root.join('lib', 'seeds', '1000 cues with tags.csv'))
  Song = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
  Song.each do |row|
  puts row.to_hash
  end
end
