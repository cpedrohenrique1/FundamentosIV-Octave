x = [0 1 2 3]'
y = [3.95 6.01 5.99 3.96]'
plot(x,y)
a = [ones(4,1) x x.^1 x.^2 x.^3 y]
rref(a)