require "pry"
class Song
  attr_accessor :name, :artist, :genre 
  @@count = 0
  @@artists = [] 
  @@genres = []
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
    hash = {}
    counter = 0 
    @@genres.reverse.each do |element|
      if hash.include?(element)
        counter += 1 
      else 
        counter += 1 
        hash[element] = counter 
      end 
    end 
    hash
  end 

end 