figure
hold on

potential = importdata('/Users/Nathan/Documents/2015-04.SteepestAccent/ljfiles/potential.txt', ' ');

potential = potential.textdata(:,7);
potential = cellfun(@str2num, potential);

plot(potential+abs(min(potential)) + 1, 'LineWidth', 2.0);

plot([5,25],[10^15,10^15], 'o', 'Color', [0.9290, 0.6940, 0.1250],'MarkerSize', 25, 'MarkerFaceColor',[0.8500, 0.3250, 0.0980]);
annotation('arrow', [.235,.275], [.22, .22])
annotation('arrow', [.325,.285], [.22, .22])
plot([68,72],[10^125,10^125], 'o', 'MarkerSize', 25, 'MarkerFaceColor',[0.8500, 0.3250, 0.0980]);

set(gca, 'YScale', 'log');

xlabel('Energy Minimization Step');
ylabel('Absolute Potential Energy (kJ/mol)');
addGradient(gcf, 'rangeLow', 0, 'rangeHigh',100,'colormap', 'reds', 'alpha', .1, 'inverse', 1);
