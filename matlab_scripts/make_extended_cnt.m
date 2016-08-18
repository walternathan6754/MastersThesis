figure
hold on

x= 0:.1:10;

y1 = 10 - x + 10*exp(-(4-x).^2/10);
y2 = 10 - x + 5*exp(-(2-x).^2/3) + 5*exp(-(6-x).^2/3);
y3 = y1 + 4*rand(1,length(x)) - 2;

plot(x, y1, 'LineWidth', 2.0);
plot(x, y2, 'LineWidth', 2.0);
plot(x, y3, 'LineWidth', 2.0);

xlim([0,10])
ylim([-1,18])

set(gca,'XTickLabel','')
set(gca,'YTickLabel','')

ylabel('$G(r)$')
xlabel('$r$')

legend('One-Step CNT', 'Two-Step CNT', 'Rough CNT', 'location','southwest')

addGradient(gcf, 'rangeLow', 0, 'rangeHigh',100,'colormap', 'reds', 'alpha', .1, 'inverse', 1)