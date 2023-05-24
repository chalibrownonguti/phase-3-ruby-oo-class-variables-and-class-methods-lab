class Song
    @@count = 0
  
    attr_reader :name, :artist, :genre
  
    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@count += 1
    end
  
    def self.count
      @@count
    end
  end
  
  # Creating new instances of the Song class
  song1 = Song.new('Song 1', 'Artist 1', 'Genre 1')
  song2 = Song.new('Song 2', 'Artist 2', 'Genre 2')
  song3 = Song.new('Song 3', 'Artist 3', 'Genre 3')
  
  # Accessing the class variable
  puts Song.count # Output: 3
  