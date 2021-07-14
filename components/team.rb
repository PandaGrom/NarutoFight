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
    validation
  end
    
  def validation
    validate_members_in_team
    #validate_number_of_members_in_NukeninTeam
    #validate_team_structure
    validate_correct_sum_of_damage
  end

  def validate_members_in_team
    raise 'write correct number of team members' if shinobies.count < 2 || shinobies.count > 10
  end

  #def validate_number_of_members_in_NukeninTeam
    #raise 'too many team members' if shinobies.count > 2 && shinobies.include? classs == 'Nukenin' #Не знаю как заставить classs видеть в этом классе
  #end

  #def validate_team_structure
    #raise 'write correct structure of team' unless shinobies.include? classs = 'Chounin'
  #end

  def validate_correct_sum_of_damage
    raise 'too little damage for team' if damage < 10
  end

  def damage
    shinobies.map(&:damage).sum
  end
end

