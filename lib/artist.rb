class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    self.name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def genres
    self.songs.collect { |song| song.genre }.uniq
  end
end
