json.array!(@clubs) do |club|
  json.extract! club, :id, :name, :description, :img_url, :address, :lat, :lng
  json.url club_url(club, format: :json)
end
