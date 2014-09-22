def sqrt(n):
	b = n
	a = 0
	while abs(b-a) > 1:
		b = (a+b)//2
		a = n//b
	return min(a,b)

print sqrt(5)
print sqrt(7)
print sqrt(10)
