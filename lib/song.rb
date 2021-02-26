class Song
  attr_accessor :artist, :name, :genre

  @@all = []

  def initialize(name)
    @name = name
    @artist = nil
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.song_count
    return @@all.size
  end

  def artist_name
    return @artist ? @artist.name : nil
  end

end