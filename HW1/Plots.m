close all; clear global; clearvars;

a = load(fullfile('.', 'chapter2', 'figure 2.1', 'sgbdnew.dat'));
b = load(fullfile('.', 'chapter2', 'figure 2.1', 'sgbdold.dat'));

figure()
stem(a, 'Marker', 'o', 'LineStyle', 'none');
figure()
histogram(a);

figure()
stem(b, 'Marker', 'x', 'LineStyle', 'none');
figure()
histogram(b);
xlim([0 200]);