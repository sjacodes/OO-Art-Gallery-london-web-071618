class Artist

  attr_reader :name
  attr_accessor :years_active

  @@all = []

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    paintings.map {|painting| painting.gallery}
  end

  def cities
    paintings.map {|painting| painting.gallery.city}
  end

  def self.ave_yrs_of_exp_of_artists
    total_years_of_exp = 0
    Artist.all.each do |artist|
      total_years_of_exp += artist.years_active
    end
    ave_yrs_for_all_artists = total_years_of_exp.fdiv(Artist.all.length)
  end

end
