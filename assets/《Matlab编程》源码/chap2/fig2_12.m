x = 0:0.1:10;
y = x.^2 - 10.*x + 26;
figure(1)
subplot(2,2,1)
plot(x,y);
title ('Linear Plot');
xlabel ('x');
ylabel ('y');
grid on;
subplot(2,2,2) 
semilogx(x,y);
title ('Semilog x Plot');
xlabel ('x');
ylabel ('y');
grid on;
subplot(2,2,3)
semilogy(x,y);
title ('Semilog y Plot');
xlabel ('x');
ylabel ('y');
grid on;
subplot(2,2,4)
loglog(x,y);
title ('Loglog Plot');
xlabel ('x');
ylabel ('y');
grid on;
