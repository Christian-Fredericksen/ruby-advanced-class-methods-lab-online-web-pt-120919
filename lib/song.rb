require "pry"
class Song
  attr_accessor :name, :artist_name
  @@all = []
  
   def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
   def self.create
    song = self.new 
    song.save
    song
  end
  
  def self.new_by_name(name)
    song = self.new 
    song.name = name
    #song.save
    song
  end
  
  def self.create_by_name(name)
    song = self.new 
    song.name = name
    song.save
    song
  end
  
  def self.find_by_name(name)
    self.all.each do |song|
      if song.name == name
      return song
      end
    end
    return nil 
  end
  
  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      self.find_by_name(name)
    else
    self.create_by_name(name)
  end 
  end
  
  def self.alphabetical
    self.all.sort_by{ |s| s.name}
  end
  
  def self.new_from_filename(new_music)
   
    # takes in a string as an arguement.
    # that string must be reduced to two key strings. The first string contains the artist's name and the second string contains the song's name. All subsequent strings can be disregarded.
    # the artist's name and the song's name are passed as arguements in the self.create class method.
    # this method then initializes a Song object.
    
     song_parts = new_music.split(/[\-\.]/)   #{|nm| @@all << self.create}
    binding.pry
    artist_name = song_parts[0]
    name = song_parts[1]
    self.create
    
  end 
    
  
end
















































































