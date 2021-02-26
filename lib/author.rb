class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def add_post(song)
    song.author = self
  end

  def posts
    Post.all.select {|song| song.author == self}
  end

  def add_post_by_title(name)
    song = Post.new(name)
    song.author = self
  end

  def self.post_count
    return Post.post_count
  end

end