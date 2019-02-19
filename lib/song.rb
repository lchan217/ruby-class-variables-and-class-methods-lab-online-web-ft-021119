require "pry"
class Song 
  attr_accessor :name, :artist, :genre 
  @@count = 0 
  @@genres = [] 
  @@artists = [] 
  
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
  
  def self.genres 
    @one_genre = @@genres.uniq 
    @one_genre
  end 
  
  def self.artists
    @one_artist = @@artists.uniq 
    @one_artist
  end 

  def self.genre_count
    counter = 0 
    new_hash = {} 
    @@genres.reverse.each do |genre|
      if !new_hash[genre] 
        counter += 1 
        new_hash[genre] = counter 
      else 
        counter += 1 
      end
    end
    new_hash
  end 
  def self.artist_count
    counter = 0 
    hash = {} 
    @@artists.reverse.each do |artist|
      if !hash[artist]
        counter += 1 
        hash[artist] = counter 
      else 
        counter += 1 
      end 
    end 
    hash
  end 
end 