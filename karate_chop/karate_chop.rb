class KarateChop
	def chop(chop, ary)
		if ary.size > 0
			ary.each_with_index { |elem, i|
				if chop == elem
					return i
				end
			}
		end
		return -1
	end
end
