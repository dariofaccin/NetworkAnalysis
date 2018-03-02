close all; clear global; clearvars;

CI = zeros(1000,2);
m = zeros(1000,1);
s = zeros(1000,1);

% Count how many times mean falls out of CI
times = 0;
pvalue = 0.05;
percentile = norminv(1-pvalue/2,0,1);

for a = 1:1000
    X = randn([1 48]);
    m(a) = sum(X) / length(X);
    X1 = (X - m(a)).^2;
    s(a) = sqrt(sum(X1) / (length(X)-1));
    CI(a,1) = m(a) - percentile*s(a) / sqrt(length(X));
    CI(a,2) = m(a) + percentile*s(a) / sqrt(length(X));
    if ( m(a) < CI(a,1) || m(a) > CI(a,2) )
        times = times + 1;
    end
%     disp(a)
end

[temp, order] = sort(CI(:,1));
CI = CI(order,:);
m = m(order);

CI_lower = CI(:,1);
CI_upper = CI(:,2);

figure('Name', 'Confidence intervals for 1000 Gaussian i.i.d. r.v.s')
plot(CI_lower, 'Linewidth', 1.5, 'Marker', 'x');
hold on;
plot(CI_upper, 'Linewidth', 1.5, 'Marker', '+');
hold on;
plot(m, 'Linewidth', 1.5, 'Marker', '*');
title('Confidence intervals for 1000 Gaussian i.i.d. r.v.s')
xlabel('Sample'); xlim([1 50]);
ylabel('Value');
legend('Upper CI', 'Lower CI', 'Mean');
hold off;