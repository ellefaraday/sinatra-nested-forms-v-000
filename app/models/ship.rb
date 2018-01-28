class Ship
  attr_accessor :name, :type, :booty
  @@SHIPS = []
  
  def self.all
    @@SHIPS
  end
end
