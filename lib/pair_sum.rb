class Array 
	def pair_sum(sum)
		arr = []
		me = self.clone.sort
		me.each_with_index do |num1, num1_i|
			break if num1 > sum
			me.each_with_index do |num2, num2_i|
				if num2_i > num1_i
					arr2 = []
					if (num1 + num2) == sum
						arr2 << num1 << num2
						arr << arr2
					end
				end
			end
		end
		return arr.uniq
	end
end