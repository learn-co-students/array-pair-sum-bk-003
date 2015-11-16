class Array
  def pair_sum(num) 
    @array = []
    @compared = self
    self.each_with_index do |number, index|
      @compared.each_with_index do |n, inde|
        @new_array = []
        if (number + n == num) && index != inde
         @new_array.push(self[index], @compared[inde])
          @array.push(@new_array.sort)
        end
      end
    end
  return @array.uniq.sort
  end
end
