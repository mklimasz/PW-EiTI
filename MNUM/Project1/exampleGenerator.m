function [M1, M2, M3] = exampleGenerator(matrixSize)
  M1 = zeros(matrixSize, matrixSize);
  for i = 1:matrixSize
    for j = 1:matrixSize
      if i==j
        M1(i,j) = 9;
      elseif i==j-1 || i==j+1
        M1(i,j) = 3;
      else
        M1(i,j) = 0;
    end
  end
  M2 = zeros(matrixSize, matrixSize);
  for i = 1:matrixSize
    for j = 1:matrixSize
      if i==j
        M2(i,j) = 1/3;
      else
        M2(i,j) = 5*(i-j)+2;
      end  
    end
  end
  M3 = zeros(matrixSize, matrixSize);
  for i = 1:matrixSize
    for j = 1:matrixSize
      M3(i,j) = 1/[4*(i+j+1)];
    end
  end
end