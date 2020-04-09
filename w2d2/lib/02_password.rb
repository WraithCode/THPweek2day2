def signup 
    puts "Hello, please define a password :"
    print ">"
    password = gets.chomp
    return password
end

def login(password)
    puts "Hello, enter password to unlock your device :"
    print ">"
    is_password = false
    input = gets.chomp
    while  is_password == false
        if input == password
            is_password = true
        else
            puts "Error, incorrect password, retry :"
            #login(password)
            print ">"
            input = gets.chomp
        end
    end
    return is_password
end

def welcome_screen
    puts "Hello, welcome to your secret base !"
    puts "Everything is secret here, did you know that Gintama is the best anime in the world ?"
    puts "Read Kingdom"
end

def perform
    password = signup
    login(password)
    welcome_screen
end

perform