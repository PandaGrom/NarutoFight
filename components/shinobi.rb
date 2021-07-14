require './concerns/with_battle_with.rb'

class Shinobi
  include WithBattleWith

  CLASSSES = %w[Genin Chounin Djounin Nukenin].freeze
  NATIONS = %w[Konoha Pesok Kamen Tuman Oblako].freeze

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
  end

  def validate_correct_classs
    raise 'Write correct class' unless CLASSSES.include? classs
  end

  def validate_correct_nation
    raise 'Write correct nation' unless NATIONS.include? nation
  end
end
