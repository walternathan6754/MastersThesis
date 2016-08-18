close all

figure 
hold on
T = 0:.1:10;

nucleation = exp(-(T-3.5)/3);
crystal_growth = exp((T-6.5)/3);
sum = 2*exp(-(T-5).^2/4) + .18;

plot(T, nucleation, 'LineWidth', 3.0)
plot(T, crystal_growth, 'LineWidth', 3.0)
plot(T, sum, 'LineWidth', 3.0)

% ylim([0,2.2])

xlabel('T')
ylabel('Rate')

set(gca, 'YtickLabel','')
set(gca,'XtickLabel',{'T$_g$','','','','','T$_m$'})

text(.9,3, 'Nucleation', 'Color', [0,0.4470, 0.7410], 'Fontsize', 18)
text(6,3, 'Crystal Growth', 'Color', [0.8500, 0.3250, 0.0980], 'Fontsize', 18)
text(3.55,2.3, 'Overall Rate', 'Color', [0.9290, 0.6940, 0.1250], 'Fontsize', 18)


addGradient(gcf, 'rangeLow', 0, 'rangeHigh',100,'colormap', 'reds', 'alpha', .1, 'inverse', 1)