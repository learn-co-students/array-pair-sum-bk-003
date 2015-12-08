# your code goes here
class Array
	def pair_sum(num)
		new_array = self.clone
		container = []
		new_array.sort!
		new_array.each_with_index do |e,i|
			while i + 1 < new_array.length
				if e + new_array[i+1] == num
					container << [e, new_array[i+1]]
				end
				i += 1
			end
		end
		container.uniq
	end
end