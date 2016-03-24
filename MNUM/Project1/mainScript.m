function [Test, Result] = mainScript(size)
  [M1, V1, M2, V2, M3, V3] = exampleGenerator(size);
  M = [4 -2 4 -2; 3 1 4 2; 2 4 2 1; 2 -2 4 2];
  V = [2 10 7 8];
  [Test, Result] = gaussianElimination(M, V);
  %X1 = gaussianElimination(M1, V1);
  %X2 = gaussianElimination(M2, V2);
  %X3 = gaussianElimination(M3, V3);
 end