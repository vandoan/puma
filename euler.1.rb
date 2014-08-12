# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
#we get 3, 5, 6 and 9. The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below 1000.

#(1..5)        #==> 1, 2, 3, 4, 5
#(1...5)       #==> 1, 2, 3, 4
#('a'..'d')    #==> 'a', 'b', 'c', 'd'



def sumMultiples(multA, multB, limit)

	total = 0

	(1... limit).each do |i|
		total += i if (i%multA == 0 || i%multB == 0 )

	end 

	puts total 


end 

puts sumMultiples(3,5,1000)



# a more efficient solution that is more complex in terms of math
#def sum_multiples(multiple, to)
#    n = (to-1) / multiple
#    n * (n+1) / 2 * multiple
#end

#irb(main):001:0> sum_multiples(3, 10) + sum_multiples(5, 10) - sum_multiples(15, 10)
#=> 23
#irb(main):002:0> sum_multiples(3, 1000) + sum_multiples(5, 1000) - sum_multiples(15, 1000)
#=> 233168

# source: http://stackoverflow.com/questions/4587320/project-euler-1find-the-sum-of-all-the-multiples-of-3-or-5-below-1000