[x,y] = meshgrid(-4:0.2:4);
z = exp(-0.5*(x.^2+0.5*(x-y).^2));
contour(x,y,z);
title('\bfContour Plot');
xlabel('\bfx');
ylabel('\bfy');
zlabel('\bfz');
 