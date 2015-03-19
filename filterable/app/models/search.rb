class Search
  include ActiveModel::Model
  
  attr_accessor :origin
  attr_accessor :first_album_year
  attr_accessor :name

  def search
    query = Band.all
    query = query.where("name ILIKE ?", "%#{name}%") if name.present?
    query = query.where(origin: origin) if origin.present?
    query = query.where(first_album_year: first_album_year) if first_album_year.present?
    query
  end
end
