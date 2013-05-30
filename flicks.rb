class Movie
  attr_reader :rank
  attr_accessor :title
  
  def initialize(title, rank=0)
    @title = title.capitalize
    @rank = rank
  end

  def to_s
    "#{@title} has a rank of #{normalized_rank}"
  end
  
  def normalized_rank
    @rank / 100.0
  end
  
  def thumbs_up
    @rank += 1
  end
  
  def thumbs_down
    @rank -= 1
  end

  
end

movie1 = Movie.new("goonies", 100)
movie2 = Movie.new("ghostbuster", 9)

puts movie1
puts movie2
movie1.thumbs_up
movie1.title = "Gooneys!"

puts movie1.normalized_rank