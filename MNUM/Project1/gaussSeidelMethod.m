function [x] = gaussSeidelMethod(A, b)
  iters = 10000;
  n = length(A);
  x = zeros([n 1]);
  for k = 1:iters
    for i = 1:n
      sum = 0;
      for j = 1:n 
        if j != i
          sum = sum + A(i,j)*x(j);
        end
      end
      x(i) = (b(i) - sum)/A(i,i);
    end
  end
end