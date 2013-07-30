# Reads data.txt into NumPy array and saves the array in binary format.
# It is memory efficient.

# You can work with the saved array as follows:
#    >>> from numpy import load, shape, average
#    >>> D = load("data.npy")
#    >>> shape(D)
#    (7, 14645083)
#    >>> average(D[2, :])
#    1965.7348883489171
#    >>> average(D[3, :])
#    11.469809257683686

from numpy import empty, array, save
N = 14645083
D = empty((7, N))
f = open("data.txt")
i = 0
for line in f:
    if line.startswith("%"): continue
    D[:, i] = array([float(x) for x in line.split()])
    i += 1
    if i % 100000 == 0: print "%.3f%%" % (100. * i / N)
print "Saving..."
save("data.npy", D)
print "Done."
