class Game
  attr_reader :active_player
  attr_reader :passive_player

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @active_player = player_1
    @passive_player = player_2
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
    placeholder = @active_player
    @active_player = @passive_player
    @passive_player = placeholder
  end

end