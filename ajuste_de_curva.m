x = [1.02 2.04 2.95 3.55]'
y = [4.55 7.20 9.51 10.81]'
A = [x ones(4,1)]
v = inv(A'*A)*A'*y