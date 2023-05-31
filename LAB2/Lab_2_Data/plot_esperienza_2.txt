%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% LOAD FILES
caso_simulato = load('matlab_test_simulation_for_andrea.mat');
caso_quanser = load('matlab_test_simulation_for_andrea.mat');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso      = 'caso';
casoSimulato = '_simulato';
casoQuanser  = '_quanser';
%%%
% Da modificare in base al nome del file .mat salvato
plot_simulation = '.simout';
plot_simulation1 = '.simout';
%%%
plot_signal = '.signals';
plot_values   = '.values';
plot_time   = '.time';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
% Unità di misura asse x
graph_time  = '[s]';
%%%
% Unità di misura asse y
graph_1_unit = '[Deg]';
graph_2_unit = '[Deg/s]';
graph_3_unit = '[bho]';
graph_4_unit = '[bho]';
%%%
% Titoli delle figure
graph_1_title = 'Stima: $1$';
graph_2_title = 'Stima : $2$';
graph_3_title = 'Stima: $3$';
graph_4_title = 'Stima : $4$';
%%%
% Figure cosa viene plottato (quali variabili
%%%
% Nomi delle variabili da plottare
graph_1_plot_name_variable = '$\theta ';
graph_2_plot_name_variable = '$\dot{\theta} ';
graph_3_plot_name_variable = '$u\,';
graph_4_plot_name_variable = '$stato\,';
%%%
% Simulazione Simulink senza motore collegato
graph_1_simulato = strcat(graph_1_plot_name_variable,'{_{simulato}}$');
graph_2_simulato = strcat(graph_2_plot_name_variable,'{_{simulato}}$');
graph_3_simulato = strcat(graph_3_plot_name_variable,'{_{simulato}}$');
graph_4_simulato = strcat(graph_4_plot_name_variable,'{_{simulato}}$');
%%%
% Quanser (motore collegato)
graph_1_quanser = strcat(graph_1_plot_name_variable,'{_{quanser}}$');
graph_2_quanser = strcat(graph_2_plot_name_variable,'{_{quanser}}$');
graph_3_quanser = strcat(graph_3_plot_name_variable,'{_{quanser}}$');
graph_4_quanser = strcat(graph_4_plot_name_variable,'{_{quanser}}$');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
% Limiti asse x e y nel plot
%1
limiti_grafico_1 = 0; %1 per attivare
limite_x_1 = [0 10];
limite_y_1 = [-80 20];
%2
limiti_grafico_2 = 0; %1 per attivare
limite_x_2 = [0 10];
limite_y_2 = [-80 20];
%3
limiti_grafico_3 = 0; %1 per attivare
limite_x_3 = [0 10];
limite_y_3 = [-80 20];
%4
limiti_grafico_4 = 0; %1 per attivare
limite_x_4 = [0 10];
limite_y_4 = [-80 20];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% DISPLAY
% Dimensioni delle figure e accorpamento assieme delle 4 figure
figure(10)
set(gcf,'Units','centimeters','Position',[1 1.5 25 19],'color','white')       
ttttttt = tiledlayout(2,2, 'TileSpacing','compact', 'Padding', 'tight');
title(ttttttt, "TITOLO",'Interpreter','latex', 'FontSize', 22)  %%eventualmente

%% Inizio PLOT delle figure 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
% 1
nexttile
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Colonna simout da plottare    %
signal_n_column = '1';          %
%                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n_time     = eval(strcat(caso, casoSimulato,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, casoSimulato,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

plot(caso_n_time,caso_n_signal,...
    'LineWidth', 3);

hold on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Colonna simout da plottare    %
signal_n_column = '1';          %
%                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n_time     = eval(strcat(caso,casoQuanser,plot_simulation1,plot_time));
caso_n_signal   = eval(strcat(caso, casoQuanser,plot_simulation1,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

plot(caso_n_time,caso_n_signal,...
    'LineWidth', 3);

set(gca,'TickLabelInterpreter',"latex",'FontSize',22)

xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
ylabel(graph_1_unit,'Interpreter',"latex",'FontSize',22) 
legend(graph_1_simulato, graph_1_quanser,'interpreter','latex','FontSize',22, 'Location','southwest')

if(limiti_grafico_1 == 1)    
    xlim(limite_x_1)  
    %xticks(0:2000:10000)
    %xticklabels({'0','2','4','6','8','10'})
    ylim(limite_y_1)
    %yticks(0:0.2:1.2)
end
grid on;
title(graph_1_title,'Interpreter','latex', 'FontSize', 22)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
% 2
nexttile
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Colonna simout da plottare    %
signal_n_column = '2';          %
%                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n_time     = eval(strcat(caso, casoSimulato,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, casoSimulato,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

plot(caso_n_time,caso_n_signal,...
    'LineWidth', 3);

hold on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Colonna simout da plottare    %
signal_n_column = '2';          %
%                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n_time     = eval(strcat(caso, casoQuanser,plot_simulation1,plot_time));
caso_n_signal   = eval(strcat(caso, casoQuanser,plot_simulation1,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

plot(caso_n_time,caso_n_signal,...
    'LineWidth', 3);

set(gca,'TickLabelInterpreter',"latex",'FontSize',22)

xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
ylabel(graph_2_unit,'Interpreter',"latex",'FontSize',22) 
legend(graph_2_simulato, graph_2_quanser,'interpreter','latex','FontSize',22, 'Location','southwest')

if(limiti_grafico_2 == 1)    
    xlim(limite_x_2)  
    %xticks(0:2000:10000)
    %xticklabels({'0','2','4','6','8','10'})
    ylim(limite_y_2)
    %yticks(0:0.2:1.2)
end
grid on;
title(graph_2_title,'Interpreter','latex', 'FontSize', 22)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
% 3
nexttile
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Colonna simout da plottare    %
signal_n_column = '3';          %
%                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n_time     = eval(strcat(caso, casoSimulato,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, casoSimulato,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

plot(caso_n_time,caso_n_signal,...
    'LineWidth', 3);

hold on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Colonna simout da plottare    %
signal_n_column = '3';          %
%                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n_time     = eval(strcat(caso, casoQuanser,plot_simulation1,plot_time));
caso_n_signal   = eval(strcat(caso, casoQuanser,plot_simulation1,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

plot(caso_n_time,caso_n_signal,...
    'LineWidth', 3);

set(gca,'TickLabelInterpreter',"latex",'FontSize',22)

xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
ylabel(graph_3_unit,'Interpreter',"latex",'FontSize',22) 
legend(graph_3_simulato,graph_3_quanser,'interpreter','latex','FontSize',22, 'Location','southwest')

if(limiti_grafico_3 == 1)    
    xlim(limite_x_3)  
    %xticks(0:2000:10000)
    %xticklabels({'0','2','4','6','8','10'})
    ylim(limite_y_3)
    %yticks(0:0.2:1.2)
end
grid on;
title(graph_3_title,'Interpreter','latex', 'FontSize', 22)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
% 4
nexttile
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Colonna simout da plottare    %
signal_n_column = '4';          %
%                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n_time     = eval(strcat(caso, casoSimulato,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, casoSimulato,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

plot(caso_n_time,caso_n_signal,...
    'LineWidth', 3);

hold on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Colonna simout da plottare    %
signal_n_column = '4';          %
%                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n_time     = eval(strcat(caso, casoQuanser,plot_simulation1,plot_time));
caso_n_signal   = eval(strcat(caso, casoQuanser,plot_simulation1,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

plot(caso_n_time,caso_n_signal,...
    'LineWidth', 3);

set(gca,'TickLabelInterpreter',"latex",'FontSize',22)

xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
ylabel(graph_4_unit,'Interpreter',"latex",'FontSize',22) 
legend(graph_4_simulato,graph_4_quanser,'interpreter','latex','FontSize',22, 'Location','southwest')

if(limiti_grafico_4 == 1)    
    xlim(limite_x_4)  
    %xticks(0:2000:10000)
    %xticklabels({'0','2','4','6','8','10'})
    ylim(limite_y_4)
    %yticks(0:0.2:1.2)
end
grid on;
title(graph_4_title,'Interpreter','latex', 'FontSize', 22)
