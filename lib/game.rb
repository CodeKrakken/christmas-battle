class Game
  attr_reader :active_player

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @active_player = player_1
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
    @active_player == @player_1 ? @active_player = player_2 : @active_player = player_1
  end

end