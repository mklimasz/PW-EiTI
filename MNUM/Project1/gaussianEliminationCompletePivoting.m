function [X] = gaussianEliminationCompletePivoting(M1, V1)
  AB = horzcat(M1, V1);
  [height, width] = size(AB);
  P = zeros([height 2]);
  X = zeros([height 1]);
  for i = 1:height-1
    subMatrix = AB([i:height],[i:height]);
    [num idx] = max(subMatrix(:));
    [maxRow maxColumn] = ind2sub(size(subMatrix),idx);
    maxRow += i - 1;
    maxColumn += i - 1;
    AB([i maxRow],:) = AB([maxRow i],:);
    %Every column change will make change in result X order
    P(i,:) = [i maxColumn]; 
    AB(:,[i maxColumn]) = AB(:,[maxColumn i]);;
    for j = i+1:height
      ratio = AB(j, i) / AB(i,i);
      for k = i:width
        AB(j,k) -= ratio * AB(i,k);
      end 
    end
  end
  for i = height:-1:1
    s = AB(i,width);
    for j = height:-1:i+1
      s -= AB(i,j) * X(j); 
    end
    X(i) = s / AB(i,i);
  end
  for i = height-1:-1:1
    X([P(i,1) P(i,2)]) = X([P(i,2) P(i,1)]);
  end
end  