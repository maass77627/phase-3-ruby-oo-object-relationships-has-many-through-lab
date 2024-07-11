
class Song
    @@all = []
attr_accessor :name, :artist, :genre

def initialize(name, artist, genre)
    @name = name
     @artist = artist
     @genre = genre
    @@all << self
end

def self.all
@@all
end



def artist_name
    self.artist.name
end


end