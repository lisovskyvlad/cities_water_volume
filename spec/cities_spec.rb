require 'cities'

describe '#cities_water_summ' do
  {
    [1,2,3,4,5,4,5,3] => 1,
    [2,1,2,3,4,2] => 1,
    [5,1,5] => 4,
    [2,7,2,7,4,7,1,7,3,7] => 5+3+6+4,
    [5,1,0,1] => 1,
    [2,5,1,2,3,4,7,7,6,3,5] => 12,
    [5,4,3,2,3,8] => 8,
    [5,4,3,5,3,8] => 5
  }.each do |heights, volume|
    it 'should return volume of water' do
      expect(cities_water_summ(heights)).to eq(volume)
    end
  end
end
