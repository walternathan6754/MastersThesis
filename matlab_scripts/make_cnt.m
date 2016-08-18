figure
hold on
set(gcf,'defaulttextinterpreter','latex');

r_partial = 0:.01:1;
r = 0:.01:1.5;

plot([0,1.5], [0,0], 'k', 'LineWidth', 1.0);

plot(r_partial, -r_partial.^3, 'LineWidth', 2.0);
plot(r_partial, r_partial.^2, 'LineWidth', 2.0);
plot(r,-.9*r.^3 + r.^2, 'LineWidth', 2.0);

xlabel('$r$');
ylabel('$G(r)$');

set(gca, 'XtickLabel','');
set(gca, 'YtickLabel','');

r_crit = 2/2.7;
g_crit = -.9*r_crit^3 + r_crit^2;
plot([r_crit,r_crit], [0,g_crit], ':k', 'LineWidth', 3.0);
plot([0,r_crit], [g_crit,g_crit], ':k', 'LineWidth', 3.0);

text(r_crit - .01, -.06, 'r$_{{c}}$', 'Fontsize', 20);
text(0+ .01, g_crit + .06, '$\Delta G_{{c}}$', 'Fontsize', 20);

text(.25,.65, {'Interface Energy,','$4\pi r^2\gamma$'}, 'Color', [0.8500, 0.3250, 0.0980], 'Fontsize', 18)
text(.25,-.65, {'Formation Energy,', '$\frac{4}{3}\pi r^3\rho\Delta\mu$'}, 'Color', [0,0.4470, 0.7410], 'Fontsize', 18)
text(.8,.3, {'Total Energy', 'Change'}, 'Color', [0.9290, 0.6940, 0.1250], 'Fontsize', 18)

addGradient(gcf, 'rangeLow', 0, 'rangeHigh',100,'colormap', 'reds', 'alpha', .1, 'inverse', 1)