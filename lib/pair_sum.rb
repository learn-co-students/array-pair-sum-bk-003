# your code goes here
class Array
	def pair_sum(t)
		matches = []
		self.each.with_index { |n, i|
			break if (i == self.size - 1 )
			self[(i+1)..-1].each { |e|
				matches << [n,e].sort if (e+n == t)
			}
		}
		matches.sort.uniq
	end 
end
