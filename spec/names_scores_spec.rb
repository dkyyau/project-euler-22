require 'names_scores'

describe 'The method alphabetical_value' do
  it 'should return an Integer' do
    expect(alphabetical_value('AMY')).to be_a Integer
  end

  it 'should return 53 for the name COLIN' do
    expect(alphabetical_value('COLIN')).to eq 53
  end
end

describe 'The method name_score' do
  it 'should return an Integer' do
    expect(name_score('AMY', 1)).to be_a Integer
  end

  it 'should return 159 for the name COLIN' do
    expect(name_score('COLIN', 2)).to eq 159
  end
end

describe 'The method total_scores' do
  names = %w[AMY BOB COLIN DAVID EMMA]

  it 'should return an Integer' do
    expect(total_scores(names)).to be_a Integer
  end

  it 'should return 556 for test names array' do
    expect(total_scores(names)).to eq 556
  end
end
