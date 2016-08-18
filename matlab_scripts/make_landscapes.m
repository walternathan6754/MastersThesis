figure

datapath = '/Users/Nathan/Documents/2014-07.Energy_Landscape/DistancesConsidered/ener/min_max_1.00e+00_1.00e-01_1.00e-04.dat';
landscapedata = importdata(datapath, '\t', 0);

plot(landscapedata(:,1),landscapedata(:,2), 'Linewidth', 1.5)

xlabel('Penalty Number')
ylabel('Potential Energy (kJ/mol)')
addGradient(gcf, 'rangeLow', 0, 'rangeHigh',100,'colormap', 'reds', 'alpha', .1, 'inverse', 1)
%%
figure

datapath = '/Users/Nathan/Documents/2015-10.argon-lj/varied_boxlength/boxlength_3.0/ener/min_max_1.00e+00_1.00e-01_1.00e-04.dat';
landscapedata = importdata(datapath, '\t', 0);

plot(landscapedata(:,1),landscapedata(:,2), 'Linewidth', 1.5)

xlabel('Penalty Number')
ylabel('Potential Energy (kJ/mol)')
addGradient(gcf, 'rangeLow', 0, 'rangeHigh',100,'colormap', 'reds', 'alpha', .1, 'inverse', 1)