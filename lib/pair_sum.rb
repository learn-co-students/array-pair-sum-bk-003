class Array

  def pair_sum(sum)
    @final_array = []
    @sum_array = self
    self.each_with_index do |number, index|
      @sum_array.each_with_index do |sum_number, sum_index|
      @inside_array = []
        if (number + sum_number == sum) && index != sum_index
          @inside_array.push(self[index], @sum_array[sum_index])
          @final_array.push(@inside_array.sort)
        end
      end
    end
    @final_array.uniq!.sort
  end
  
end