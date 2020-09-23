require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramble'

require 'pry'

class Song
  extend Memorable
  extend Findable
  include Paramble
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

  #def to_param
    #name.downcase.gsub(' ', '-')
  #end
end
