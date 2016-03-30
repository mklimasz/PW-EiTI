function [] = mainScript(size)
  [M1, V1, M2, V2, M3, V3] = exampleGenerator(size);
  M = [4 -2 4 -2; 3 1 4 2; 2 4 2 1; 2 -2 4 2];
  V = [8; 7; 10; 2;];
  Test = gaussianEliminationCompletePivoting(M, V);
  display(Test);
  X1 = gaussianEliminationCompletePivoting(M1, V1);
  display(X1);
  X2 = gaussianEliminationCompletePivoting(M2, V2);
  display(X2);
  X3 = gaussianEliminationCompletePivoting(M3, V3);
  display(X3);
 end