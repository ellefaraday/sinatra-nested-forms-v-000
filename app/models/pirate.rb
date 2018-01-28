class Pirate
  attr_accessor :name, :weight, :height

  @@PIRATES = []

  def self.all
    @@PIRATES
  end
end
