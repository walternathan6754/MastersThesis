cd /Users/Nathan/Documents/2014-07.Energy_Landscape/Kob_Andersen_system/20hourSimulation/ener;
%%
close all
figure
hold on

heights = {'8.00e+00', '4.00e+00', '2.00e+00', '1.00e+00', '5.00e-01', '2.50e-01'};

for i = 1:length(heights)
    path = strcat('min_max_', heights(i), '_1.00e-01_1.00e-04.dat');
    energy = importdata(char(path));
    
    plot(energy(:,1), energy(:,2), '-o');
end

xlim([0, 3*10^4])
ylim([-1840, -1800])
set(gca,'YTick',[-1840:10:-1800]);
xlabel('Penalty')
ylabel('$U$ (kJ/mol)')
legend('H=8.00', 'H=4.00','H=2.00','H=1.00','H=0.50','H=0.25')

addGradient(gcf, 'rangeLow', 0, 'rangeHigh',100,'colormap', 'reds', 'alpha', .1, 'inverse', 1)
