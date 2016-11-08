json.extract! song, :id, :song, :tags, :created_at, :updated_at
json.url song_url(song, format: :json)