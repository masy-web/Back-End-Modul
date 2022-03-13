
class Player 
  attr_accessor :name , :list_monster
  def initialize(name,list_monster)
    @name = name
    @list_monster = list_monster
  end
  
  def listMonster
    puts "#{@name}:"
    puts "#{@list_monster[0]}, #{@list_monster[1]}, #{@list_monster[2]}"
  end

  def p_attack(att_monster,def_monster)
    def_monster.take_damage(att_monster.attack_point)
    att_monster.take_damage(0.5 * def_monster.attack_point)
    puts "#{@name}'s #{att_monster.name} attacks enemy's #{def_monster.name}, deals #{att_monster.attack_point.to_f} damage and takes #{0.5* def_monster.attack_point} damage"
  end
    
end