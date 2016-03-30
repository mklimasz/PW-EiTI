function [err] = calculateNorm(residuum)
  sum = 0;
  for i = 1:size(residuum)
    sum += residuum(i,1)^2;
  end
  err = sqrt(sum);
end