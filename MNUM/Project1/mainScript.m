function [Test, Result] = mainScript(size)
  [M1, V1, M2, V2, M3, V3] = exampleGenerator(size);
  M = [4 -2 4 -2; 3 1 4 2; 2 4 2 1; 2 -2 4 2];
  V = [8; 7; 10; 2;];
  [Result] = gaussianEliminationCompletePivoting(M, V);
  display("With Pivoting");
  display(Result);
  [Test2, Result2] = gaussianElimination(M,V);
  display("CORRECT");
  display(Result2);
  %X1 = gaussianElimination(M1, V1);
  %X2 = gaussianElimination(M2, V2);
  %X3 = gaussianElimination(M3, V3);
 end