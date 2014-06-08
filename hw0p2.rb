def hello(name)
	"Hello, #{name}"
end

def starts_with_consonant?(str)
	if /^[b-df-hj-np-tv-z]/i.match(str) == nil
		false
	else
		true
	end
end

def binary_multiple_of_4?(str)
	if str.to_i % 4 == 0
		true
	else
		false
	end
end

puts hello("JOE")

puts starts_with_consonant?('jj')
puts starts_with_consonant?('%s')
puts starts_with_consonant?('ab')
puts starts_with_consonant?('Zaaav')
puts binary_multiple_of_4?('600')
puts binary_multiple_of_4?('afs')
