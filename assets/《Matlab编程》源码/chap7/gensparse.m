z = eye(1000);
z1 = rand(1000);
for ii = 1:999
   for jj = ii+1:1000
      if z1(ii,jj) <= 0.003
         z(ii,jj) = -300 * z1(ii,jj);
         z(jj,ii) = z(ii,jj);
      end
   end
end 