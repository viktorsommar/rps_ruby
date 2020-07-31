def play_game
    puts "Let's play a game of rock paper scissors!"

    def player_choice
        print "Make your choice: rock, paper or scissors? "
        @player_choice = gets.chomp.downcase
    end
    
    player_choice
    puts "You choose #{@player_choice}."

    def computer_choice
        @compouter_choice = rand(1..3)

        if @computer_choice == 1
            @computer_choice = "rock"
        elsif @computer_choice == 2
            @computer_choice = "paper"
        else
            @computer_choice = "scissors"
        end
    end

    computer_choice
    puts "Computer chose #{@computer_choice}!"
end

play_game