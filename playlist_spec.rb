require_relative 'playlist'

describe Playlist do
  
  before do
    @playlist = Playlist.new("Kermit")
  end
  
  it "has a name" do
    @play.name.should == "Kermit"
  end
  
  context "being played with one movie" do
    before do
      @initial_rank = 10
      @movie = Movie.new("goonies", @initial_rank)
      @playlist.add_movie(@movie)
    end
    
  end
end