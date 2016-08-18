figure
hold on

energy = importdata('/Users/Nathan/Documents/2015-07.ST2_ABC/abc_st2/ener/energy_5.00e+00_1.00e-01_1.00e-04.dat');

plot(energy(:,1), 'LineWidth', 2.0)

ylim([-15100, -14600]);
ylabel('Potential Energy (kJ/mol)')
xlabel('Metadynamic Iteration')

addGradient(gcf, 'rangeLow', 0, 'rangeHigh',100,'colormap', 'reds', 'alpha', .1, 'inverse', 1)