RSpec.describe 'game can be played' do
  player_choice = 'rock'

  subject { player_choice }

  it 'player can choose rock' do
    expect(subject).to eq "rock"
  end
end