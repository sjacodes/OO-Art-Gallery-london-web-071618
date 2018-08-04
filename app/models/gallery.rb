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
    # - Get a list of all cities that have a gallery. A city should not appear more than once in the list.
    Gallery.all.map {|gallery| gallery.city}.uniq
  end

  def artists
    # - Get a list of artists that have paintings at a specific gallery
     painting_at_galleries = Painting.all.select {|painting| painting.gallery == self}
     painting_at_galleries.map {|painting| painting.artist}
  end

  def artists_names
    # - Get a list of the names of artists that have paintings at a specific gallery
    artists.map {|artist| artist.name}
  end


  def combined_yrs_of_ex
    # - Get the combined years of experience of all artists at a specific gallery
      array_of_artists_exp = artists.map {|painting| painting.years_active}
      total_years_of_ex = array_of_artists_exp.inject(:+)
  end
end
