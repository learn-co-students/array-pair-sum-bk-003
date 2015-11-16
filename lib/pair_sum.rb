# your code goes here
class Array

	def pair_sum(num)
		array = self.sort
		return_array = []
		array.each_with_index { |e,index|  
			a = num - e
			break if a < e
			a_index = array.index(a)
			return_array << [e,a] if !a_index.nil? and a_index != index
		}
		return_array.uniq!
		return return_array
	end

end