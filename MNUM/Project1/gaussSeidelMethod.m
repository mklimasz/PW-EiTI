function [x] = gaussSeidelMethod(A, b)
  iters = 100000;
  n = length(A);
  x = zeros([n 1]);
  for k = 1:iters
    for i = 1:n
      x(i) = (1/A(i, i))*(b(i) - A(i, 1:n)*x + A(i, i)*x(i));
    end
  end
end