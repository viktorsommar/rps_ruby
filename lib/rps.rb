def play_game
    puts "Let's play a game of rock paper scissors!"

    def player_choice
        print "Make your choice: rock, paper or scissors? "
        @player_choice = gets.chomp.downcase

        until @player_choice == 'rock' || @player_choice == 'paper' || @player_choice == 'scissors' do
            print "That's a silly choice. Choose again! "
            @player_choice = gets.chomp.downcase
        end
    end
    
    player_choice
    puts "You choose #{@player_choice}."

    def computer_choice
        @computer_choice = rand(1..3)

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

    def results
        if @player_choice === @computer_choice
            puts "It's a DRAW! No one wins."
            play_game
        elsif @player_choice == 'rock' && @computer_choice == 'scissors' || @player_choice == 'paper' && @computer_choice == 'rock' || @player_choice == 'scissors' && @computer_choice == 'rock'
            puts "You WIN!"
            play_game
        else
            puts "You LOOSE!"
            play_game
        end
    end

    results
end

play_game