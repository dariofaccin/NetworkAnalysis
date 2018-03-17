close all; clear global;

% Generation of random vector of n=48 uniform i.i.d. r.v.s
X = rand([1 48]);

% Sample mean
m = sum(X) / length(X);

% Sample std deviation
X1 = (X - m).^2;
s = sqrt(sum(X1) / (length(X)-1));

% Confidence interval at 95%
% percentile = unifinv(0.95,0,1);
percentile = 1.96;
CI = [m - percentile*s / sqrt(length(X)), m + percentile*s / sqrt(length(X))];
%questa è una prova