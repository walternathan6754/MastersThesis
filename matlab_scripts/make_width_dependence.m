cd /Users/Nathan/Documents/2014-07.Energy_Landscape/Kob_Andersen_system/20hourSimulation/ener;
%%
close all
figure
hold on

widths = {'4.00e-01', '2.00e-01', '1.00e-01', '5.00e-02', '2.50e-02'};

for i = 1:length(widths)
    path = strcat('min_max_1.00e+00_', widths(i), '_1.00e-04.dat');
    energy = importdata(char(path));
    
    plot(energy(:,1), energy(:,2), '-o');
end

xlim([0, 3*10^4])
ylim([-1850, -1800])
gca.YTick = [-1850:10:-1800];
xlabel('Penalty')
ylabel('$U$ (kJ/mol)')
legend('W$^2$=.400', 'W$^2$=.200', 'W$^2$=.100', 'W$^2$=.050', 'W$^2$=.025')

addGradient(gcf, 'rangeLow', 0, 'rangeHigh',100,'colormap', 'reds', 'alpha', .1, 'inverse', 1)
