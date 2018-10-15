# require 'pry'
# class Artist
#     attr_accessor :name
#     @@all = []
#
#   def initialize(name)
#     @name = name
#     @@all << self
#   end
#
#   def self.all
#     @@all
#   end
#
#   def new_song(song_name, genre)
#     binding.pry
# ￼    Song.new(song_name, self, genre)
# ￼  end
#
#   def songs
#     Song.all.select do |song|
#       song.artist == self
#     end
#
#   end
#
#   def genres(song,genre)
#     songs.map {|genre| genre.song }
#   end
#
#   def self.all
#     @@all
#   end
# end
#
# # trav = Artist.new("trav")
# # rap = Genre.new("rap")
# # mysong = trav.new_song("mysong",rap)
# # binding.pry

class Artist

 attr_accessor :name
 @@all = []

 def initialize(name)
   @name = name
   @@all << self
 end


 def self.all
   @@all
 end

 def new_song(name, genre)
   Song.new(name, self, genre)

 end

 def songs
   Song.all.select do |each_song|
     each_song.artist == self
   end
 end

 def genres
   songs.collect do |each_song|
     each_song.genre

   end
 end


end
