bit_len = 4

def rev(b):
	for i in range(bit_len):
		if b[i]==0: b[i]=1
		else: b[i]=0

def dec(b):
	one = [0 for i in range(bit_len-1)] + [1]
	# print one
	for i in range(1,bit_len+1):
		if b[-i]==1:
			b[-i] -= one[-i]
		elif one[-i]==1:
			b[-i] = 1
			if i<bit_len: one[-i-1] = 1
		# print "\tb=%s" % b

def init(n=0):
	global bit_len
	b = [0 for i in range(bit_len)]
	i = -1
	neg = True if n<0 else False
	n = abs(n)
	for i in range(1,bit_len+1):
		b[-i] = n%2
		n //= 2
		# print "\tb=%s" % b
	if neg:
		dec(b)
		# print "\tb=%s" % b
		rev(b)
		# print "\tb=%s" % b
	return b

def decimal(bi):
	b = bi[:]
	neg = True if b[-bit_len]==1 else False
	if neg:
		dec(b)
		rev(b)
	out = 0
	for i in range(1,bit_len+1):
		out += b[-i]*2**(i-1)
		# print "\tout=%s" % out
	return -out if neg else out

# A = init(-3)
# print A
# print decimal(A)

def DBNZ(R, lbl):
	dec(R)
	# print "\tR=%s" % R
	if R!=init():
		# print "\tjump to %s" % lbl.__name__
		lbl()




# --------------------------------------------- #
# ------------------RISC-CODE------------------ #
# --------------------------------------------- #

print "CLEAR:"
def CLEAR(R):
	def loop():
		DBNZ(R, loop)
	loop()

A = init(-4)
print A
print "CLEAR A"
CLEAR(A)
print A
print


print "DEC:"
def DEC(R):
	def end(): return
	DBNZ(R, end)

A = init(3)
print A
print "DEC A"
DEC(A)
print A
print

A = init(0)
print A
print "DEC A"
DEC(A)
print A
print

print "INC:"
def INC(R):
	A = init()
	CLEAR(A)
	DEC(A)
	def loop():
		DEC(R)
		DBNZ(A, loop)
	loop()

A = init(0)
print A
print "INC A"
INC(A)
print A
print

A = init(-4)
print A
print decimal(A)
print "INC A"
INC(A)
print A
print decimal(A)
print


print "GOTO:"
def GOTO(lbl):
	A = init()
	CLEAR(A)
	INC(A)
	DBNZ(A, lbl)

print


print "NEG:"
def NEG(R, S):
	CLEAR(S)
	def loop():
		DEC(S)
		DBNZ(R, loop)
	loop()

A = init(4)
B = init(-2)
print A
print decimal(A)
print "NEG A, B"
NEG(A, B)
print B
print decimal(B)
print


print "SUB:"
def SUB(R, S):
	def loop():
		DEC(S)
		DBNZ(R, loop)
	loop()

R = init(0)
S = init(7)
print R
print S
print "SUB R, S"
SUB(R, S)
print S
print decimal(S)
print

R = init(3)
S = init(7)
print R
print S
print "SUB R, S"
SUB(R, S)
print S
print decimal(S)
print


print "ADD:"
def ADD(R, S):
	B = init()
	NEG(R, B)
	SUB(B, S)

R = init(3)
S = init(4)
print R
print S
print "ADD R, S"
ADD(R, S)
print S
print decimal(S)
print


print "MOV:"
def MOV(A, B):
	CLEAR(B)
	ADD(A, B)

A = init(7)
B = init(4)
print A
print B
print "MOV A, B"
MOV(A, B)
print B
print A
print


print "COPY:"
def COPY(A, B):
	R = init()
	MOV(A, R)
	CLEAR(A)
	CLEAR(B)
	def loop():
		INC(A)
		INC(B)
		DBNZ(R, loop)
	loop()

A = init(7)
B = init(4)
print A
print B
print "COPY A, B"
COPY(A, B)
print B
print A
print

A = init(0)
B = init(-1)
print A
print B
print "COPY A, B"
COPY(A, B)
print B
print A
print

