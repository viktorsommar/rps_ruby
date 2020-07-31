require './lib/rps.rb'

describe 'player can choose rock paper scissors' do

  it 'player can choose rock' do
    expect(@input).to eq "rock"
  end
end