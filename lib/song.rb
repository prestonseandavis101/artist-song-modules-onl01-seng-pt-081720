require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramble'

require 'pry'

class Song
 include Paramble 
 include Memorable::InstanceMethods
 extend Memorable::ClassMethods
 
 ####Memorable::ClassMethods
  ##include
  #Memorable::InstanceMethods
  #include Paramble
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  #def initialize
   # @@songs << self
  #end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
  
end
