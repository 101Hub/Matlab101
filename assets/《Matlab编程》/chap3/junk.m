x = 5;
y = -2 

if x >= 0 & y >= 0
   fun = x + y;
elseif x >= 0 & y < 0
   fun = x + y^2;
elseif x < 0 & y >= 0
   fun = x^2 + y;
else
   fun = x^2 + y^2;
end
 
disp (['The value of the function is ' num2str(fun)]);
