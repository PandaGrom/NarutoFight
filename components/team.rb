require './concerns/with_battle_with.rb'

class Team
  include WithBattleWith

  attr_accessor \
    :name,
    :shinobies,
    :enemy

  def initialize(name:, shinobies:)
    @name = name
    @shinobies = shinobies
  end
      
  def damage
    shinobies.map(&:damage).sum
  end
end
