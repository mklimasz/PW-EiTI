function [] = mainScript()
  M = [4 -2 4 -2; 3 1 4 2; 2 4 2 1; 2 -2 4 2];
  V = [8; 7; 10; 2;];
  Test = gaussianEliminationCompletePivoting(M, V);
  display(Test);
  time = 0;
  size = 10;
  while size < 50
    [A1, b1, A2, b2, A3, b3] = exampleGenerator(size);
    tic;
    X1 = gaussianEliminationCompletePivoting(A1, b1);
    printf("Time for data 1 size %d:", size);
    display(toc);
    tic;
    X2 = gaussianEliminationCompletePivoting(A2, b2);
    printf("Time for data 2 size %d:", size);
    display(toc);
    tic;
    X3 = gaussianEliminationCompletePivoting(A3, b3);
    printf("Time for data 3 size %d:", size);
    display(toc);
    size += 10;
  end
 end