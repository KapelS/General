class Pet
 attr_accessor :name, :health, :eat, :play, :sleep

def initialize (name, health, eat, play, sleep )
    @name = name
    @health = health  
    @play = play
    @sleep = sleep 
    @eat = eat
  end
print "Введите название петомца: "
name = gets.chomp().to_s
pet = Pet.new(name, 100, 100, 100, 100)
puts "------------------------"
puts ("    Родился " + pet.name)
puts "------------------------"
puts "\nЗдоровья\t#{pet.health}\nСытость\t\t#{pet.eat}\nУсталость\t#{pet.sleep}\nИнтерес\t\t#{pet.play}"
puts ""
puts "Проходит время..."
begin
  print "-------------------"
  puts "\n|Здоровья\t#{pet.health -= rand(20)}|\n|Сытость\t#{pet.eat -= rand(20)}|\n|Усталость\t#{pet.sleep -=rand(20)}|\n|Интерес\t#{pet.play -= rand(20)}|"
  print "-------------------"
    puts "\nЧто вы хотите сделать с #{pet.name}:
1 - Сходить к врачу
2 - Пококормить
3 - Уложить спать
4 - Поиграть
Нажмите Enter что бы ничего не делать..."


  if pet.health != 0
  diya = gets.chomp().to_s
    case diya
    when "1"
      print "Вы выбрали - 1 "
        if pet.health > 0
            pet.health = 100
           end
         pet.eat -= rand(20)
         pet.sleep -= rand(20)
         pet.play -= rand(20)
         print "#{pet.name} лечится!"
      when "2"
        print "Вы выбрали - 2 "
         pet.health -= rand(20)
        if pet.eat > 0
            pet.eat = 100
          end
         pet.sleep -= rand(20)
         pet.play -= rand(20)
        print "#{pet.name} ест!"
      when "3"
        print "Вы выбрали - 3 "
        pet.health -= rand(20)
        pet.eat -= rand(20)
        if pet.sleep > 0
            pet.sleep = 100
          end
        pet.play -= rand(20)
        print "#{pet.name} спит!"
    when "4"
      print "Вы выбрали - 4 "
        pet.health -= rand(20)
        pet.eat -= rand(20)
        pet.sleep -= rand(20)
        if pet.play > 0
            pet.play = 100
          end
        print "#{pet.name} играет!"
    when ""
        print "Вы выбрали не делать ничего!"
        pet.health -= rand(20)
        pet.eat -= rand(20)
        pet.sleep -= rand(20)
        pet.play -= rand(20)
    else
      puts "Вы ввели #{diya}, что-то не так!"
      print "Попробуйте сновa! "
      next
    end
  if pet.health <= 0
      pet.health = 0
        print "\n\n#{pet.name} умер от болезней!!! Конец игры!"
  elsif pet.eat <= 0
      pet.eat = 0
        print "\n\n#{pet.name} умер от голода!!! Конец игры!"
  elsif pet.sleep <= 0
      pet.sleep = 0
        print "\n\n#{pet.name} умер от безсонници!!! Конец игры!"
  elsif pet.play <= 0
      pet.play = 0
        print "\n\n#{pet.name} умер от скуки!!! Конец игры!"
end
              

  puts "\nЗдоровья\t#{pet.health}\nСытость\t\t#{pet.eat}\nУсталость\t#{pet.sleep}\nИнтерес\t\t#{pet.play}"

  
  end  while pet.health > 0 && pet.eat > 0 && pet.sleep > 0 && pet.play > 0
   
          #       
          # break
end 

    
  # puts ""
  # puts("#{pet.name} умер!!! Конец игры!")
  # puts ""

end



