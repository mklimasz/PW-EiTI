function [X] = iterativeCorrection(AB, X)
  matrixSize = size(AB);
  height = matrixSize(1);
  width = matrixSize(2);
  A = AB([1:height],[1:height]);
  b = AB([1:height],[width:width]);
  residuum = A*X - b;
  AB = horzcat(A,residuum);
  dX = zeros([height 1]);
  for i = height:-1:1
    s = AB(i,width);
    for j = height:-1:i+1
      s -= AB(i,j) * dX(j); 
    end
    dX(i) = s / AB(i,i);
  end
  X = X - dX;
  newResiduum = A*X - b;
  if calculateNorm(residuum) > calculateNorm(newResiduum)
    fprintf("Result is better after correction old %d, new %d\n", calculateNorm(residuum), calculateNorm(newResiduum));
  else
    fprintf("Result wasnt better after correction old %d, new %d\n", calculateNorm(residuum), calculateNorm(newResiduum));  
  end
end