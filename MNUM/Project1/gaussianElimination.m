function [AB] = gaussianElimination(M1, V1)
  AB = horzcat(M1, rot90(V1));
  [height, width] = size(AB);
  display(AB);
  for i = 1:height-1
    for j = i+1:height
      ratio = AB(j, i) / AB(i,i);
      for k = i:width
        AB(j,k) = AB(j,k) - ratio * AB(i,k);
      end 
    end
  end
end  