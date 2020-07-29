require './lib/rps.rb'
describe Rps do
  it 'user can choose a weapon' do
    expect(player.choice).to eq 'Rock'
  end
end