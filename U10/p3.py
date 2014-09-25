from random import randint
size = 20

def swap(arr, i):
	temp = arr[i]
	arr[i] = arr[i+1]
	arr[i+1] = temp

def sort(arr, size):
	stop = size-1
	done = False
	while not done:
		done = True
		for i in range(stop):
			if arr[i]>arr[i+1]:
				done = False
				swap(arr, i)
		stop -= 1

arr = []
for i in range(size):
	arr += [randint(-99,99)]

print arr
sort(arr, size)
print arr
