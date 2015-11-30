# your code goes here
require 'pry'
class Array


def pair_sum(num)
  array = []
  self.sort.each do |m| 
   self.sort.reverse.each do |i|
    if (m <= num)
      ar = []
       ar << m
       if (i + ar[0] == num)
        ar << i
        array << ar.sort
      
      end
  end

end
end
return array.uniq
end

end