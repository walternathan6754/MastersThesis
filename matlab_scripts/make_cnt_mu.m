figure
hold on
set(gcf,'defaulttextinterpreter','latex');

r = 0:.01:1.5;

plot([0,1.5], [0,0], 'k', 'LineWidth', 1.0);

plot(r,-1*r.^3 + r.^2, 'LineWidth', 2.0);
plot(r,.05*r.^3 + r.^2, 'LineWidth', 2.0);

ylim([-.5,1]);
xlim([0,1.5]);

xlabel('$r$');
ylabel('$G(r)$');

set(gca, 'XtickLabel','');
set(gca, 'YtickLabel','');

text(.5,.7, '$\Delta \mu > 0$', 'Color', [0.8500, 0.3250, 0.0980], 'Fontsize', 18)
text(.9,-.3, '$\Delta \mu < 0$', 'Color', [0,0.4470, 0.7410], 'Fontsize', 18)

addGradient(gcf, 'rangeLow', 0, 'rangeHigh',100,'colormap', 'reds', 'alpha', .1, 'inverse', 1)