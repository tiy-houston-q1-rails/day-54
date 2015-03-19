json.array!(@bands) do |band|
  json.extract! band, :id, :name, :origin, :first_album_year
  json.url band_url(band, format: :json)
end
