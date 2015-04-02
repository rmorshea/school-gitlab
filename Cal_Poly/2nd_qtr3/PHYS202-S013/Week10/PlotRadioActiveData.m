experiment = importdata('radioactivedecay.dat');
t = experiment.data(:,1);
N = experiment.data(:,2);
figure(42)
plot(t,N,'.b')

%%

hold on
% fit data
fitmod = fit(t,N,'poly4')
plot(fitmod,'r-');
legend('data','fitted line')
hold off