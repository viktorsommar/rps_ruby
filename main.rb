OPTIONS = {
  rock: 1,
  paper: 2,
  scissors: 3,
}

class RPS
  def initialize
    @player_score = 0
    @computer_score = 0
  end

  def play_game
    puts "Let's play a game of rock paper scissors!"

    play_round(player_choice, computer_choice)

    puts "FINAL SCORE: (YOU) #{@player_score} - (COMPUTER) #{@computer_score}"
  end

  def player_choice
    puts "Make your choice: rock, paper or scissors?"
    chosen_option = gets.chomp.downcase

    if OPTIONS[chosen_option.to_sym].nil?
        puts "That's a silly choice. Choose again!"
        player_choice
    end

    puts "You choose #{chosen_option}."
    chosen_option
  end

  def computer_choice
    OPTIONS.key(rand(1..3))
  end

  def play_round(player, computer)
    puts "Computer chose #{computer}!"

    if player == computer
      puts "It's a DRAW! No one wins. The score is YOU: #{@player_score} - COMPUTER: #{@computer_score}"
    elsif winning_combinations.include?([player, computer])
      @player_score += 1
      puts "You WIN! The score is YOU: #{@player_score} - COMPUTER: #{@computer_score}"
    else
      @computer_score += 1
      puts "You LOSE! The score is YOU: #{@player_score} - COMPUTER: #{@computer_score}"
    end

    play_round(player_choice, computer_choice) if play_again?
  end

  def winning_combinations
    [["rock", "scissors"], ["paper", "rock"], ["scissors", "paper"]]
  end

  def play_again?
    puts "Play again? y / n"

    answer = gets.chomp.downcase

    answer.include?("y")
  end
end

