require('rspec')
require('queenattack')

describe('Array#queen_attack?') do

  it('is false if the coordinates are not horizontally, vertically, or diagonally in line with each other') do
    expect([1,1].queen_attack?([2, 3])).to(eq(false))
  end

  it('is true if the coordinates are in a vertical line') do
    expect([2,1].queen_attack?([2,5])).to(eq(true))
  end

  it('is true if the coordinates are in an horizontal line') do
    expect([2,1].queen_attack?([6,1])).to(eq(true))
  end

  it('is true if the coordinates are in a diagonal line running north east') do
    expect([1,1].queen_attack?([5,5])).to(eq(true))
  end

  it('is true if the coordinates are in a diagonal line running south east') do
    expect([1,5].queen_attack?([4,2])).to(eq(true))
  end

end
