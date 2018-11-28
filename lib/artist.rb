class Artist

attr_accessor :name
# initialized with a name

def initialize(name) #initialized with a name
  @name = name
  #initialized with a name
  @songs = [] # has many songs
end

def songs
  @songs # has many songs
end

def add_song(song)
  @songs << song
  song.artist = self
end
# add_song
# takes in an argument of a song and associates that song with
# the artist by telling the song that it belongs to that artist

def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
end
# add_song_by_name
# takes in an argument of a song name, creates a new song with it and asso
# ciates the song and artist

def artist_name
  self.artist.name
end

def self.song_count
  Song.all.count
end

end
