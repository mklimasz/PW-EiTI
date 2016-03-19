function [M1, V1, M2, V2, M3, V3] = exampleGenerator(matrixSize)
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
  V1 = zeros(1, matrixSize);
  for i = 1:matrixSize
    V1(1,i) = 3.4 + 0.6 * i;
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
  V2 = zeros(1, matrixSize);
  for i = 1:matrixSize
    V2(1,i) = 8+0.2*i;
  end  
  M3 = zeros(matrixSize, matrixSize);
  for i = 1:matrixSize
    for j = 1:matrixSize
      M3(i,j) = 1/[4*(i+j+1)];
    end
  end
  V3 = zeros(1, matrixSize);
  for i = 1:matrixSize
    V3(1,i) = 2+2/(i+1);
  end
end