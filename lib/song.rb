class Song

attr_accessor :name, :artist
#has a name belongs to an artist
  @@all = []

def initialize(name) #initialized with a name
  @name = name #initialized with a name
  @@all << self # pushes new instances into @@all upon initialization
end

def self.all
  @@all
end

def artist_name
   !self.artist ? nil : self.artist.name
 end

# .all
# is a class method that returns an array
# of all song instances that have been created

end
