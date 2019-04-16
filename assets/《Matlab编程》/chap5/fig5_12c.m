ray = sqrt(randn(1,10000000).^2 + randn(1,10000000).^2);
ray = ray / mean(ray) * 10;
[n,x]=hist(ray,0:1:34);
figure(3);

n = n/size(ray);
plot(x,n,'LineWidth',2);
hold on;
plot([10 10],get(gca,'Ylim'),'k-.');
plot([26 26],get(gca,'Ylim'),'r:');
legend('Noise probability distribution','Mean Noise','Detection Threshold');
title('\bfNoise distribution after detection');
xlabel('\bfAmplitude (volts)');
ylabel('\bfProbability');
