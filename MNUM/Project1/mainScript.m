function [] = mainScript()
  start = 10;
  size = 200;
  fprintf("DATA 1\n");
  for i = start:3*start:size
    fprintf("\n");
    fprintf("Size %d\n", i);
    [A1, b1] = exampleGenerator(i, 1);
    tic;
    X1 = gaussianEliminationCompletePivoting(A1, b1);
    fprintf("Time %d\n", toc);
    residuum = A1*X1 - b1;
    fprintf("Error as residuum norm %d\n", calculateNorm(residuum));
  end
  fprintf("\nDATA 2\n");
  for i = start:3*start:size
    fprintf("\n");
    fprintf("Size %d\n", i);
    [A2, b2] = exampleGenerator(i, 2);  
    tic;
    X2 = gaussianEliminationCompletePivoting(A2, b2);
    fprintf("Time %d\n", toc);
    residuum = A2*X2 - b2;
    fprintf("Error as residuum norm %d\n", calculateNorm(residuum));
  end
  fprintf("\nDATA 3\n");
  for i = start:3*start:size
    fprintf("\n");
    fprintf("Size %d\n", i);
    [A3, b3] = exampleGenerator(i, 3);    
    tic;
    X3 = gaussianEliminationCompletePivoting(A3, b3);
    fprintf("Time %d\n", toc);
    residuum = A3*X3 - b3;
    fprintf("Error as residuum norm %d\n", calculateNorm(residuum));
  end
 end