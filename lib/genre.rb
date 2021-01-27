class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    self.name = name
    self.class.all << self
  end

  def songs
    Song.all.select { |song| song.genre == self }
  end

  def self.all
    @@all
  end

  def artists
    self.songs.collect { |song| song.artist }.uniq
  end
end
