class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres =  []
    @@unique_artists = []
    @@unique_genres = []
    @@genre_count = {}
    @@artist_count = {}

    def self.count
        @@count
    end
    def self.artists
        @@unique_artists
    end
    def self.genres
        @@unique_genres
    end
    def self.garr
        @@genres
    end
    def self.arrt
        @@artists
    end

    def self.genre_count
        genr_count = self.genres.map do |genre|
            [genre, self.garr.filter{ |gar| gar == genre}.count]
        end
        genr_count.to_h
    end

    def self.artist_count
        arrt_count = self.artists.map do |artist|
            [artist, self.arrt.filter{ |art| art == artist}.count]
        end
        arrt_count.to_h
    end

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists.push(artist)
        @@genres.push(genre)
        if !(@@unique_artists.include?(artist))
            @@unique_artists.unshift(artist)
        else
            nil
        end
        if !(@@unique_genres.include?(genre))
            @@unique_genres.unshift(genre)
        else
            nil
        end
    end
    


end