# your code goes here
require 'pry'

class Array
  def pair_sum(sum)
    a = self.sort
    final = []
    until a.empty?
      x = a.shift
      a.each_index do |i|
        #binding.pry
        if x + a[i] == sum
          final << [x, a[i]]
          a.delete_at(i)
        end
      end
    end
    final 
  end
end