RSpec.describe 'game can be played' do
  context 'player wins' do
    player_choice = 'rock'
    subject { player_choice }

    it 'player chooses rock' do
      expect(subject).to eq "rock"
    end

    it 'computer randoms scissors' do
      @computer_choice = rand(1..3)
      expect(@computer_choice). to eq 'scissors'
    end
  end

  context 'player looses' do
    player_choice = 'paper'
    subject { player_choice }

    it 'player chooses paper' do
      expect(subject).to eq "paper"
    end

    it 'computer randoms scissors' do
      @computer_choice = rand(1..3)
      expect(@computer_choice). to eq 'scissors'
    end
  end

  context 'game is tied' do
    player_choice = 'scissors'
    subject { player_choice }

    it 'player chooses scissors' do
      expect(subject).to eq "scissors"
    end

    it 'computer randoms scissors' do
      @computer_choice = rand(1..3)
      expect(@computer_choice). to eq 'scissors'
    end
  end
end