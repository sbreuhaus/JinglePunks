# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', '1000 cues with tags.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  s = Song.new
  s.name = row['song']
  s.tags = row['tags']
  s.save!
end
#puts "Ther are now #{Song.count} rows in the transactions table"

#Song.create!([
#  {song:"Broken Just Fine-JP", tags:"Singer-Songwriter,Light,Playful,bouncy"},
#  {song:"Nightmares To Dreams-JP", tags:"Dark,Worried,Sad,Edgy"}
#  ])
