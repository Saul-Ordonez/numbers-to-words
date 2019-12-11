require('rspec')
require('number_words')

describe('Score#score_counter') do
  it('returns the word version of a single digit number') do
    one = NumbersToWords.new("1")
    expect(one.number_convert).to(eq(['one']))
  end
  it('returns the word version of a single digit number') do
    seven = NumbersToWords.new("7")
    expect(seven.number_convert).to(eq(['seven']))
  end
  it('returns the word version of a double digit number ending in zero') do
    twenty = NumbersToWords.new("20")
    expect(twenty.number_convert).to(eq(['twenty']))
  end
  it('returns the word version of a double digit number') do
    forty_five = NumbersToWords.new("45")
    expect(forty_five.number_convert).to(eq(['forty five']))
  end
  it('returns the word version of a double digit number in the teens') do
    twelve = NumbersToWords.new("12")
    expect(twelve.number_convert).to(eq(['twelve']))
  end

end
