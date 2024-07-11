
class Genre
@@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
        artists = []
        self.songs.each do |song|
        artist = song.artist
        artists << artist
        end
        artists
        # Song.all.select {||}
    end

end