%created by Nicholas Garrett

a=[10^123,10^124,9^122,10^126, 34^123, 23*11^124,29^132,14^126];

norm = l2NormFunc(a)

error = sqrt(a(1)^2 + a(2)^2 + a(3)^2 + a(4)^2 + a(5)^2 + a(6)^2 + a(7)^2 + a(8)^2) - norm

function [norm] = l2NormFunc(a)    
   %||x|||_2 = sqrt(sum(x_i^2)from 1->n)
   
   %scale input
   scalingValue = max(abs(a(:)))
   a(:) = a(:)/scalingValue;
   
   %length of the vector
   n = length(a)
  
   %variable to hold the sum
   sum = 0;
   
   %iterate through the terms, adding their squares to the sum
   for i = 1:n
       aiSquared = (a(i))^2;
        sum = sum + aiSquared;
   end
   
   %finish the algorithm and solve for norm
   norm = sqrt(sum)
   norm = norm * scalingValue
end 