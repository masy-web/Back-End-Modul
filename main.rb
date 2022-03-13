require_relative 'monster'
require_relative 'player'
phpkachu = Monster.new('Phpkachu', 80, 50)
sqlrtle = Monster.new('Sqlrtle', 100, 20)
cppmander = Monster.new('Cppmander', 40, 80)
bashtoise = Monster.new('Bashtoise', 60, 60)
torterraform = Monster.new('Torterraform', 120, 10)
monsters = [phpkachu, sqlrtle, cppmander, bashtoise, torterraform]

# monsters.each do |monster|
#   if monster.hitpoint > 0
#     puts "#{monster.name}[#{monster.hitpoint}]"
#   else
#     puts "#{monster.name}[X]"
#   end
# end
# phpkachu.attack(sqlrtle)
# phpkachu.attack(cppmander)
# monsters.each do |monster|
#   puts monster
# end
phpkachu1 = phpkachu.clone
phpkachu2 = phpkachu.clone
sqlrtle1 = sqlrtle.clone
sqlrtle2 = sqlrtle.clone
cppmander1 = cppmander.clone
cppmander2 = cppmander.clone
bashtoise1 = bashtoise.clone
bashtoise2 = bashtoise.clone
torterraform1 = torterraform.clone
torterraform2 = torterraform.clone


player1 =[phpkachu1,cppmander1,torterraform1]
player2 = [sqlrtle2, cppmander2, bashtoise2]

p1 = Player.new("Player 1",player1)
p2 = Player.new("Player 2",player2)
p1.listMonster
puts ''
p2.listMonster
puts ''
puts '=======================Turn 1======================='
puts ''
p1.p_attack(p1.list_monster[0],p2.list_monster[1])
puts ''
p1.listMonster
puts ''
p2.listMonster
puts ''
p2.p_attack(p2.list_monster[0],p1.list_monster[1])
puts ''
p1.listMonster
puts ''
p2.listMonster
puts ''