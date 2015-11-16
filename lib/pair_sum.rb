class Array
  def pair_sum(sum)
    pairs = []
    self.each_with_index do |num, num_index|
      next if num + num > sum 
      self.each_with_index do |mate, mate_index| 
        if mate + num == sum && mate >= num
          pairs << [num, mate] 
        end
      end
    end
    pairs.sort.uniq
  end
end