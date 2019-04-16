function res = fact1(x)
if x > 0
   res = x * fact1(x-1);
else
   res = 1;
end