reverseList a =  rlist [] a 0
	where rlist res a c
		| c == length(a) = res
		| otherwise = rlist(a!!c:res) a(c+1)
