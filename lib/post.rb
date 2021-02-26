class Post
  attr_accessor :author, :title, :genre

  @@all = []

  def initialize(name)
    @title = name
    @author = nil
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.post_count
    return @@all.size
  end

  def author_name
    return @author ? @author.name : nil
  end

end