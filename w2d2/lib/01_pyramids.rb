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
    i = 1 
    
    puts "Voici votre pyramide !"
  
    height.times do
      puts " " * (Integer(base_length / 2) - Integer(i / 2)) + "#" * i
      i += 2
    end
end

def wtf_pyramid(height)
    n = 1 #nb de # dans la ligne
    h = height

    while (h % 2) == 0
        puts "Vous devez choisir un nombre impair"
        h = pyramid_height
    end

    puts "Voici votre pyramide !"
    h.times do |i|
        i += 1
        m = (Float(h) /2.0).ceil #ligne du milieu

        if i<m 
            puts " " * ((h-n)/2)+ "#" * n
            n+=2
        elsif i>m 
            puts " " * ((h -n )/2)+ "#" * n
            n -=2
        else
            puts "#" * h 
            n -=2
        end
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
        height = pyramid_height
        wtf_pyramid(height)
    else 
        puts "veuillez entrer un choix entre 1 et 2"
    end
end


type_pyramid