fibs = [0,1]
def fib(i):
	global fibs
	while len(fibs)-1 < i:
		fibs += [fibs[-1]+fibs[-2]]
	return fibs[i];


for i in range(20):
	print fib(i)

# print fibs

# print fib(100000)
