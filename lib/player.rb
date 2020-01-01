class Player
  DEFAULT_HIT_POINTS = 60
  attr_reader :name
  attr_reader :hit_points

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def attack(opponent)
    opponent.receive_damage
  end

  def receive_damage
  end
  
end