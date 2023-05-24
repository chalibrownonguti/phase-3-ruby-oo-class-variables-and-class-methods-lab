class Song
    attr_reader :name, :artist, :genre
    
    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
    end
  end
  
  # Creating a new instance of the Song class
  hit_me = Song.new('Hit Me Baby One More Time', 'Britney Spears', 'Pop')
  
  # Accessing the attributes of the song
  puts hit_me.name   # Output: Hit Me Baby One More Time
  puts hit_me.artist # Output: Britney Spears
  puts hit_me.genre  # Output: Pop
  