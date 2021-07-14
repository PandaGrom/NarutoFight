require './concerns/with_battle_with.rb'

class Shinobi
  include WithBattleWith

  CLASSSES = %w[Genin Chounin Djounin Nukenin].freeze
  NATIONS = %w[Konoha Kiri Kumo Suna Ame].freeze

  attr_accessor \
    :name,
    :age,
    :classs,
    :damage,
    :nation,
    :enemy

  def initialize(name:, age:, classs:, damage:, nation:)
    @name = name
    @age = age
    @classs = classs
    @damage = damage
    @nation = nation
    validation
  end

  private

  def validation
    validate_correct_classs
    validate_correct_nation
    validate_correct_age
    validate_correct_damage_of_class
    validate_correct_damage_of_age
    validate_correct_damage_of_Nukenin
  end

  def validate_correct_classs
    raise 'Write correct class' unless CLASSSES.include? classs
  end

  def validate_correct_nation
    raise 'Write correct nation' unless NATIONS.include? nation
  end

  def validate_correct_age
    raise 'Write correct age' if age < 4
  end

  def validate_correct_damage_of_class
    raise 'Write correct damage of class' if classs == 'Genin' && damage > 5 && name != 'Gaara' #Не работает с || 'Naruto'
  end

  def validate_correct_damage_of_age
    raise 'Write correct damage of age' if age < 4 && damage > 3
  end

  def validate_correct_damage_of_Nukenin
    raise 'too little damage for Nukenin' if damage < 7 && classs == 'Nukenin'
  end

  
end
