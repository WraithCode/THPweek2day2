def roll
    number = rand(6) +1
    return number
end


def perform
    puts "Début de la partie :"
    place = 0
    i=0 #stat
    while place != 10
        number = roll
        place = round(number, place)
        i+=1
    end
    puts "La partie est terminée. Vous avez mis #{i} tours"
    return i
end

def round(number, place)
    
    if number == 1
        if place >0 
            place -=1
            puts "Vous avez joué #{number}, vous descendez d'une marche. Vous êtes à la case #{place}."
        else
            "Vous ne pouvez pas descendre plus bas. Vous êtes à la case #{place}."
        end
    elsif number == 2 or number == 3 or number == 4
        puts "Vous avez joué #{number}, vous ne bougez pas. Vous êtes toujours à la case #{place}"
    else
        place +=1
        puts "Vous avez joué #{number}, vous avancez d'une marche. Vous êtes maintenant à la case #{place}"
    end
    return place
end

def average_finish_time
    puts "Entrez le nombre de parties souhaitées"
    print ">"
    nb_parties = gets.to_i
    i = perform
    nb_parties.times do 
        i += perform
        puts "Nombres de tours au total : #{i}"
    end
    res = i / nb_parties
    puts "Les parties durent en moyenne #{res} tours"
end 
average_finish_time