def fib(i):
	if i==0:
		return 0;
	fibprelast = 0;
	fiblast = 1;
	while i>1:
		temp = fibprelast;
		fibprelast = fiblast;
		fiblast += temp;
		i -= 1
	return fiblast;

for i in range(20):
	print fib(i)
