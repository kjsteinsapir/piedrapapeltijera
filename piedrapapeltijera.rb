
puts ("Bienvenidos al Piedra Papel o Tijera")
puts ("Jugador numero 1 elige tu nombre")
nombre_1 = gets.chomp
switch = true
switch2 = true
# Opciones y Validacion
while switch == true 
    puts "#{nombre_1} elige la opción que quieres jugar: "
    puts "(1) piedra"
    puts "(2) papel" 
    puts "(3) tijera"
    puts "(4) salir"
    opcion_1 = gets.chomp

    if opcion_1 == "salir" || opcion_1 == "4"
        puts "Te has salido del juego"
        break
    end

    if opcion_1 == "piedra" || opcion_1 == "papel"  || opcion_1 == "tijera"  
        switch = false
        puts
        puts ("Jugador numero 2 elige tu nombre")
        nombre_2 = gets.chomp
        puts "#{nombre_2} elige la opción que quieres jugar: "
        puts "(1) piedra"
        puts "(2) papel" 
        puts "(3) tijera"
        puts "(4) salir"      
        opcion_2 = gets.chomp

        while switch2 == true
            if opcion_2 == "piedra" || opcion_2 == "papel" || opcion_2 == "tijera" || opcion_2 == "salir"
                switch2 = false
                puts 
            else
                puts "#{nombre_2} tu opción no es válida. Elige la opción que quieres jugar: "
                puts "(1) piedra"
                puts "(2) papel" 
                puts "(3) tijera"
                puts "(4) salir"      
                opcion_2 = gets.chomp
            end
        end    
    else
        switch = true    
    end
end

if opcion_1 == "piedra" && opcion_2 == "piedra" || opcion_1 == "papel" && opcion_2 == "papel" || opcion_1 == "tijera" && opcion_2 == "tijera"
    puts "#{nombre_1}: #{opcion_1}"
    puts "#{nombre_2}: #{opcion_2}"
    puts "Se ha producido un empate"
elsif
    opcion_1 == "piedra" && opcion_2 == "tijera" || opcion_1 == "papel" && opcion_2 == "piedra" || opcion_1 == "tijera" && opcion_2 == "papel"
    puts "#{nombre_1}: #{opcion_1}"
    puts "#{nombre_2}: #{opcion_2}"
    puts "Ha ganado #{nombre_1}"    
elsif
    opcion_1 == "piedra" && opcion_2 == "papel" || opcion_1 == "papel" && opcion_2 == "tijera" || opcion_1 == "tijera" && opcion_2 == "piedra"
    puts "#{nombre_1}: #{opcion_1}"
    puts "#{nombre_2}: #{opcion_2}"
    puts "Ha ganado #{nombre_2}" 
else
    puts "Uno de los jugadores salió del juego. Juego ha sido finalizado" 
end




#pregit

   