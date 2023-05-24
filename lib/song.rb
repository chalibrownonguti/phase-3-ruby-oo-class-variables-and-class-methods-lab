class Song
    @@count = 0
    @@artists = []
    @@genres = []
  
    attr_reader :name, :artist, :genre
  
    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@count += 1
      @@artists << artist
      @@genres << genre
    end
  
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
      genre_count = Hash.new(0)
      @@genres.each { |genre| genre_count[genre] += 1 }
      genre_count
    end
  
    def self.artist_count
      artist_count = Hash.new(0)
      @@artists.each { |artist| artist_count[artist] += 1 }
      artist_count
    end
  end

  
  # Creating new instances of the Song class
song1 = Song.new('Song 1', 'Artist 1', 'Genre 1')
song2 = Song.new('Song 2', 'Artist 2', 'Genre 2')
song3 = Song.new('Song 3', 'Artist 1', 'Genre 1')

# Accessing the class methods
puts Song.count
# Output: 3

puts Song.artists
# Output: ["Artist 1", "Artist 2"]

puts Song.genres
# Output: ["Genre 1", "Genre 2"]

puts Song.genre_count
# Output: {"Genre 1"=>2, "Genre 2"=>1}

puts Song.artist_count
# Output: {"Artist 1"=>2, "Artist 2"=>1}
