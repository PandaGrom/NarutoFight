class Shinobi
	attr_accessor \
		:name,
		:age,
		:classs,
		:damage,
		:nation

	def initialize(name:, age:, classs:, damage:, nation:)
		@name = name
		@age = age
		@classs = classs
		@damage = damage
		@nation = nation
	end


end

class Team

	attr_accessor \
	:name,
	:shinobies

	def initialize(name:, shinobies:)
		@name = name
		@shinobies = shinobies
	end
	
	def battle_with
		
	end

end
Shikamaru = Shinobi.new(name:'Shikamaru', age:'17', classs:'Chounin', damage:'6', nation:'Konoha')
Asuma = Shinobi.new(name:'Asuma', age:'30', classs:'Djounin', damage:'8', nation:'Konoha')
Choudji = Shinobi.new(name:'Choudji', age:'17', classs:'Chounin', damage:'5', nation:'Konoha')
Ino = Shinobi.new(name:'Ino', age:'17', classs:'Chounin', damage:'4', nation:'Konoha')

Gaara = Shinobi.new(name:'Gaara', age:'15', classs:'Genin', damage:'7', nation:'Pesok')
Kankuro = Shinobi.new(name:'Kankuro', age:'17', classs:'Chounin', damage:'6', nation:'Pesok')
Temari = Shinobi.new(name:'Temari', age:'17', classs:'Chounin', damage:'6', nation:'Pesok')

Team1 = Team.new(name:'Team_Gaara', shinobies:'Gaara, Kankuro, Temari')
Team2 = Team.new(name:'Team_Asuma', shinobies:'Asuma, Shikamaru, Choudji, Ino')