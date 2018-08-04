class Artist

  attr_accessor :years_active

  attr_reader :name

  @@all = []

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
    #  - Get a list of all artists
    @@all
  end

  def paintings
    # - Get a list of all the paintings by a specific artists
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    # - Get a list of all the galleries that a specific artist has paintings in
    paintings.map {|painting| painting.gallery}
  end

  def cities
    # - Get a list of all cities that contain galleries that a specific artist has paintings in
    paintings.map {|painting| painting.gallery.city}
  end

  def self.ave_years_of_experiences_of_all_artist
    # - Find the average years of experience of all artists
    total_yrs_of_exp = 0
    Artist.all.each do |artist|
      total_yrs_of_exp = total_yrs_of_exp + artist.years_active
    end
    ave_yrs_for_all_artists = total_yrs_of_exp.fdiv(Artist.all.length)
  end



end
