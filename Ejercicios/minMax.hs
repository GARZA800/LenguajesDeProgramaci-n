maxMin x = find x (head x) (head x)
	where find x mx mn 
		| x == [] = (mn, mx)
		|(head x) > mx = find(tail x)(head x) mn
		|(head x) < mn = find(tail x)mx (head x)
		|otherwise = find(tail x) mx mn 