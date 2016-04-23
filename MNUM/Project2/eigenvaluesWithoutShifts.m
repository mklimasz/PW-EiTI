function [eigenvalues] = eigenvaluesWithoutShifts(A, maxIterations)
    iteration = 0;
    while iteration < maxIterations
        [Q, R] = qrGramSchmidt(A);
        A = R * Q;
        iteration = iteration + 1;
    end
    eigenvalues = diag(A);
end