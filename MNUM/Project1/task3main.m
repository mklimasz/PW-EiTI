function [] = task3main()
  A = [[14, -1, -6, 5],
        [1, -8, -4, -1],
        [1, -4, -12, -1],
        [1, -1, 8, -16]];
  b = [10; 0; -10; -20];
  x = gaussSeidelMethod(A, b);
  residuum = A*x - b;
  fprintf("Given example residuum norm %d \n", calculateNorm(residuum));
  [A b] = exampleGenerator(20, 3);
  display(A\b);
  display(gaussianEliminationCompletePivoting(A, b));
  display(gaussSeidelMethod(A, b));
end