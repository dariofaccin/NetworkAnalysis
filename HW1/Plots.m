close all; clear global; clearvars;

%% FIGURE 2.1
a = load(fullfile('.', 'chapter2', 'figure 2.1', 'sgbdold.dat'));
b = load(fullfile('.', 'chapter2', 'figure 2.1', 'sgbdnew.dat'));

figure('Name', 'Figure 2.1')
subplot(1,2,1);
stem(a, 'Marker', 'x', 'LineStyle', 'none');
subplot(1,2,2);
stem(b, 'Marker', 'o', 'LineStyle', 'none');

figure('Name', 'Figure 2.1, Histogram')
subplot(1,2,1);
histogram(a);
subplot(1,2,2);
histogram(b);
xlim([0 200]);
print -deps fig21;

%% FIGURE 2.2
a = load(fullfile('.', 'chapter2', 'figure 2.1', 'sgbdold.dat'));
b = load(fullfile('.', 'chapter2', 'figure 2.1', 'sgbdnew.dat'));

[f, x] = ecdf(a);
[f, y] = ecdf(b);

figure('Name', 'Figure 2.2')
plot(x,f);
hold on;
plot(y,f);
hold off;
legend('Old', 'New');
print -deps fig22;

%% FIGURE 2.7
a = load(fullfile('.', 'chapter2', 'figure 2.1', 'sgbdold.dat'));
b = load(fullfile('.', 'chapter2', 'figure 2.1', 'sgbdnew.dat'));

c = a - b;

figure('Name', 'Figure 2.7')
subplot(1,3,1);
stem(c, 'LineStyle', 'none', 'Marker', 'x');
subplot(1,3,2);
histogram(c);
print -deps fig27;

%% FIGURE 2.10
a = load(fullfile('.', 'chapter2', 'figure 2.10', 'joe.dat'));

figure('Name', 'Figure 2.10')
plot(a);
print -deps fig210;