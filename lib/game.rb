class Game
  attr_reader :active_player
  attr_reader :passive_player

  def initialize(player_1, player_2)
    @player_1, @player_2 = player_1, player_2
    @active_player, @passive_player = player_1, player_2
  end
  
  def attack(player)
    player.receive_damage
  end

  def player_1
    @player_1
  end

  def player_2
    @player_2
  end

  def switch_turns
    @active_player, @passive_player = @passive_player, @active_player
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end
  
  def self.instance
    @game
  end

end