def ask_first_name
    puts "Entrez votre prénom :"
    print ">"
    first_name = gets.chomp
    return first_name
end


def say_hello(first_name)
    puts "Hello #{first_name} !"
end


def combo
    first_name = ask_first_name
    say_hello(first_name)
end

combo