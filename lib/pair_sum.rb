# your code goes here
class Array
	def pair_sum(n)
		answer = []
		self.each { |num| self.length.times { |i| answer << [num, self[i]].sort if num + self[i] == n } }
		answer.uniq.sort
	end
end