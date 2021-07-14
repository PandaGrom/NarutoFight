require './components/team.rb'
require './components/shinobi.rb'

shikamaru = Shinobi.new(name:'Shikamaru', age:17, classs:'Chounin', damage:6, nation:'Konoha')
asuma = Shinobi.new(name:'Asuma', age:30, classs:'Djounin', damage:8, nation:'Konoha')
choudji = Shinobi.new(name:'Choudji', age:17, classs:'Chounin', damage:5, nation:'Konoha')
ino = Shinobi.new(name:'Ino', age:17, classs:'Chounin', damage:4, nation:'Konoha')

gaara = Shinobi.new(name:'Gaara', age:15, classs:'Genin', damage:25, nation:'Pesok')
kankuro = Shinobi.new(name:'Kankuro', age:17, classs:'Chounin', damage:6, nation:'Pesok')
temari = Shinobi.new(name:'Temari', age:17, classs:'Chounin', damage:6, nation:'Pesok')

team1 = Team.new(name:'Team_Gaara', shinobies:[gaara, kankuro, temari])
team2 = Team.new(name:'Team_Asuma', shinobies:[asuma, shikamaru, choudji, ino])


p team2.battle_with(gaara)