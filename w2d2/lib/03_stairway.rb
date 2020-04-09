def roll
    number = rand(6) +1
    return number
end


def perform
    place = 0
    while place != 10
        number = roll
        place = round(number, place)
    end
    puts "La partie est terminée."
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


perform