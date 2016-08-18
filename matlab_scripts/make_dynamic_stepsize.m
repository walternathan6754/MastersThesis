%%
energy_data = importdata('/Users/Nathan/Documents/2014-07.Energy_Landscape/DistancesConsidered/ener/energy_1.00e+00_1.00e-01_1.00e-04.dat');

%%
figure

%%
[hAx,hLine1,hLine2] = plotyy(1:1:length(energy_data(111600:113000,1)), energy_data(111600:113000,2), 1:1:length(energy_data(111600:113000,1)), energy_data(111600:113000,3), 'plot');

set(hLine1,'Marker','x');
set(hLine2,'Marker','x');

set(hAx(1),'YTick',0:10:50)
set(hAx(2),'YTick',0:0.01:.05)

set(hAx(1),'XLim',[0 400])
set(hAx(2),'XLim',[0 400])
% xlim([111600 112000])

xlabel('MTD Step')
ylabel(hAx(1),'$U (kJ/mol)$')
ylabel(hAx(2),'$\alpha (nm)$')

