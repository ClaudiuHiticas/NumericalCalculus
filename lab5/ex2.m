x = [1 2];
f = [0 0.6931];
fd = [1 0.5];
Hermite_interp(x, f, fd, 1.5)

true_val = log(1.5)

err = abs(true_val - herm)
