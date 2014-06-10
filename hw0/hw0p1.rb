def sum(lis=[])
	if lis.empty?
		0
	else
		lis.reduce(:+)
	end
end


def max_2_sum(lis=[])
	if lis.empty?
		0
	elsif lis.count == 1
		lis[0]
	else
		lis.sort! {|x,y| y <=>x}
		lis[0]+lis[1]
	end
end

def sum_to_n?(lis=[], n=0)
	if lis.empty? or lis.length == 1
		false
	else
		lis.sort!
		for i in 0..(lis.length-1)
			for j in (i+1)..(lis.length-1)
				if (lis[i] + lis[j]) == n
					puts lis[i]
					puts lis[j]
					return true
				elsif (lis[i] + lis[j]) > n
					break
				end
			end
		end
	end
	false
end

puts sum_to_n?([-1,-2,3,4,6,-8], n=12)


