function [] = mainScript()
  M = [4 -2 4 -2; 3 1 4 2; 2 4 2 1; 2 -2 4 2];
  V = [8; 7; 10; 2;];
  Test = gaussianEliminationCompletePivoting(M, V);
  display(Test);
  time = 0;
  size = 10;
  while size < 50
    [M1, V1, M2, V2, M3, V3] = exampleGenerator(size);
    tic;
    X1 = gaussianEliminationCompletePivoting(M1, V1);
    printf("Time for data 1 size %d:", size);
    display(toc);
    tic;
    X2 = gaussianEliminationCompletePivoting(M2, V2);
    printf("Time for data 2 size %d:", size);
    display(toc);
    tic;
    X3 = gaussianEliminationCompletePivoting(M3, V3);
    printf("Time for data 3 size %d:", size);
    display(toc);
    size += 10;
  end
 end