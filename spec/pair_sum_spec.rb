describe Array do
  describe "#pair_sum" do
    it"doesn'tchange the original array" do
      numbers = [2,3,5,1,4,7,0,6]
      numbers.pair_sum(5)
      expect(numbers).to eq(numbers)
    end

    it "returns the one pair that adds up three" do
      numbers = [0,1,3,4]
      expect(numbers.pair_sum(3)).to eq([[0,3]])
    end

    it "returns the two pairs that adds up three" do
      numbers = [0,1,2,3,4]
      expect(numbers.pair_sum(3)).to eq([[0,3],[1,2]])
    end

    it "returns three pairs that add up to five" do
      numbers = [2,3,5,1,4,7,0,6]
      expect(numbers.pair_sum(5)).to eq([[0,5],[1,4],[2,3]])
    end

    it "returns four pairs that add up to eight" do
      numbers = [8,1,0,4,6,10,2,4,-2]
      expect(numbers.pair_sum(8)).to eq([[-2,10],[0,8],[2,6],[4,4]])
    end

    it "returns five paris that add up to thirty-one" do
      numbers = [-28,30,-50,39,39,25,35,24,-11,1,23,-37,36,-46,1,31,39,-14,-23,-18,-27,-25,48,25,39,-47,-23,-3,9,-27,-45,49,-30,-41,-7,8,-50,-17,-20,47,-4,-14,15,-22,-2,-14,-42,-31,-36,28]
      expect(numbers.pair_sum(31)).to eq([[-18, 49],[-17,48],[-4,35],[1,30],[8, 23]])
    end
  end
end
