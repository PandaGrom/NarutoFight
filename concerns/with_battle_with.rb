module WithBattleWith
  def battle_with(enemy)
    @enemy = enemy
    "Winner: #{winner}"
  end

  def winner
    if 2 + damage > enemy.damage
      return name
    else
      if 2 + damage == enemy.damage
        return random
      else
        return enemy.name
      end
    end
  end

  def random
    Random.new.rand(0..1) > 0 ? enemy.name : name
  end
end

