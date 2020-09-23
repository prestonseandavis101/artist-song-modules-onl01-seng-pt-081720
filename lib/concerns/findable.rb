module Findable
  
  def find_by_name(name)
    Artist.detect{|a| a.name == name}
  end
end