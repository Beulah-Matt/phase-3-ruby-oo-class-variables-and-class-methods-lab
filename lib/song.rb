require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    @@genres = []
    @@artists=[]

    def initialize (name, artist, genre)
        @name=name
        @artist=artist
        @genre=genre
        @@count +=1
        @@artists << artist
        @@genres << genre

    end

    @@count = 0

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genres.collect do |genre|
            if (genre_count[genre])
                genre_count[genre] += 1
            else
                genre_count[genre] = 1
            end
        end
        genre_count
    end

end