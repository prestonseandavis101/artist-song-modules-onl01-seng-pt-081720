require_relative'../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramble'

require 'pry'


class Artist
  include Paramble
  extend Findable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  
  #extend Memorable
  #extend Findable

  
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
   # @@artists << self
    super
    @songs = []
  end


  def self.all
    @@artists
  end


  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
