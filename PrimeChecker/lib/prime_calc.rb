class Integer

	def factorize
		square_root = self**0.5
		(1..square_root).map{ |n| [n, self/n] if self/n*n == self }.compact.flatten.sort
	end

	def prime?
		self.factorize.size == 2 ? true : false
	end

end