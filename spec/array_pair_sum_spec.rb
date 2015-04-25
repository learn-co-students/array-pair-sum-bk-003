describe Array do
  describe "#array_pair_sum" do

    it "doesn't change the original array" do
      numbers = [2,3,5,1,4,7,0,6]
      numbers.array_pair_sum(5)
      expect(numbers).to eq(numbers)
    end

    it "returns the one pair that adds up three" do
      numbers = [0,1,3,4]
      expect(numbers.array_pair_sum(3)).to eq([[0,3]])
    end

    it "returns the two pairs that adds up three" do
      numbers = [0,1,2,3,4]
      expect(numbers.array_pair_sum(3)).to eq([[0,3],[1,2]])
    end

    it "returns three pairs that add up to five" do
      numbers = [2,3,5,1,4,7,0,6]
      expect(numbers.pair_sum(5).to eq([[0,5],[1,4],[2,3]])
    end

    it "returns three pairs that add up to five" do
      expect(numbers.pair_sum(5).to eq([[0,5],[1,4],[2,3]])
    end

    it "returns four pairs that add up to eight" do
      numbers = [8,1,0,4,6,10,2,4,-2]
      expect(numbers.pair_sum(8).to eq([[-2,10],[0,8],[2,6],[4,4]])
    end
  end
end
