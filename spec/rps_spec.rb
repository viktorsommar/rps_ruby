require './lib/rps.rb'

describe 'player can choose rock paper scissors' do
  let(@player_choice = 'rock')

  it 'player can choose rock' do
    expect(@player_choice).to eq "rock"
  end
end