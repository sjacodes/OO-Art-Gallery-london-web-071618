class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def self.cities
    Gallery.all.map {|gallery| gallery.city}.uniq
  end

  def artists
    galleries_paintings = Painting.all.select{|painting| painting.gallery == self}
    galleries_paintings.map {|painting| painting.artist}
  end

  def artists_names
    artists.map {|artist| artist.name}
  end

  def combined_years_of_exp
    arr_of_artists_exp = artists.map {|artist| artist.years_active}
    total_years_of_exp = arr_of_artists_exp.inject(:+)
  end

end
