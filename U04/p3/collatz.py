def collatz(k):
	i = 0
	while k > 1:
		i += 1
		if k%2==0:
			k = k/2
		else:
			k = k*3
			k = k+1
	return i

for n in range(5,10):
	print collatz(n)
