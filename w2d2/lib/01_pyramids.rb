def pyramid_height
    puts "Salut, bienvenue dans la pyramide, combien d'étages veux-tu ?"
    print "> "
    height = gets.to_i
end

def half_pyramid
    puts "Salut, bienvenue dans la pyramide, combien d'étages veux-tu ?"
    print "> "
    etages = gets.to_i

    puts "Voici la pyramide :"
    i = etages-1
    a = 1 
    while i>= 0
        i.times do
            print " "
        end
        a.times do 
            print "#"
        end
        
        puts
        i = i-1
        a = a+1
    end
end

def full_pyramid(height)
    # dessine le haut de la pyramide
    base_length = height * 2 - 1
    i = 1 # Iteration for hashtag sign
    
    puts "Here's your pyramid master!"
  
    height.times do
      puts " " * (Integer(base_length / 2) - Integer(i / 2)) + "#" * i
      i += 2
    end
end

def type_pyramid
    puts "Quelle pyramide désirez-vous ?"
    puts "1 - Full"
    puts "2 - Wtf"
    choice = gets.chomp
    if choice == "1"
        height = pyramid_height
        full_pyramid(height)
    end
    if choice == "2"
        pyramid_height
        puts "je ne l'ai pas fait hahaha"
    else 
        puts "veuillez entrer un choix entre 1 et 2"
    end
end


type_pyramid