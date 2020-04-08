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
    puts "Salut, bienvenue dans la pyramide, combien d'étages veux-tu ? Entre un nombre impair"
    print "> "
    etages = gets.to_i
    if ((etages%2) != 0) 
        puts "Envoie un nombre impair je t'ai dit !!!! (stp sinon t'auras jamais de pyramide)"
    end
        puts "Voici la pyramide :"
        i = etages
        a = 1 
    while i>= 1
        i.times do
            print " "
        end
        2*a.times do 
            print "#"
        end
        
        puts
        i = i/2
        a = a+1
    end
end

full_pyramid
