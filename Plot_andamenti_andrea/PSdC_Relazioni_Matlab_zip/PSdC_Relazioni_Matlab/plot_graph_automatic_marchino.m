%% NOTA cambiare riga 70 ----> 40x35 da variare se schermo piccolo!!!
%  mancano da sistemare tutti i titoli...



%% load file
caso1 = load('Oboe_projects-Andrea-s_Branch/caso1.mat');
caso2 = load('Oboe_projects-Andrea-s_Branch/caso2.mat');
caso3 = load('Oboe_projects-Andrea-s_Branch/caso3.mat');
caso4 = load('Oboe_projects-Andrea-s_Branch/caso4.mat');
caso5 = load('Oboe_projects-Andrea-s_Branch/caso5.mat');
caso6 = load('Oboe_projects-Andrea-s_Branch/caso6.mat');
caso7 = load('Oboe_projects-Andrea-s_Branch/caso7.mat');
caso8 = load('Oboe_projects-Andrea-s_Branch/caso8.mat');
caso9 = load('Oboe_projects-Andrea-s_Branch/caso9.mat');
caso10 = load('Oboe_projects-Andrea-s_Branch/caso10.mat');
caso11 = load('Oboe_projects-Andrea-s_Branch/caso11.mat');
caso12 = load('Oboe_projects-Andrea-s_Branch/caso12.mat');
caso13 = load('Oboe_projects-Andrea-s_Branch/caso13.mat');
caso14 = load('Oboe_projects-Andrea-s_Branch/caso14.mat');
caso15 = load('Oboe_projects-Andrea-s_Branch/caso15.mat');
caso16 = load('Oboe_projects-Andrea-s_Branch/caso16.mat');
caso17 = load('Oboe_projects-Andrea-s_Branch/caso17.mat');
caso18 = load('Oboe_projects-Andrea-s_Branch/caso18.mat');
%caso19 --> DIMOSTRARE PERCHE NON VA


caso      = 'caso';
plot_simulation = '.simulazione_out';
plot_signal = '.signals';
plot_values   = '.values';
plot_time   = '.time';


graph_alpha_beta = '[Deg]';
graph_alpha_beta_dot = '[Deg/s]';
graph_time  = '[s]';
graph_legend_caso_n   = '1';
graph_legend_caso_n_1 = '2';
graph_theta_n = strcat('${{\theta}_{caso\,', graph_legend_caso_n,'}}$');
graph_alpha_n = strcat('${{\alpha}_{caso\,', graph_legend_caso_n,'}}$');
graph_theta_n_1 = strcat('${{\theta}_{caso\,', graph_legend_caso_n_1,'}}$');
graph_alpha_n_1 = strcat('${{\alpha}_{caso\,', graph_legend_caso_n_1,'}}$');
graph_theta_dot_n = strcat('${\dot{\theta}_{caso\,',graph_legend_caso_n,' }}$');
graph_theta_dot_n_1 = strcat('${\dot{\theta}_{caso\,',graph_legend_caso_n_1,' }}$');
graph_alpha_dot_n = strcat('${\dot{\alpha}_{caso\,',graph_legend_caso_n,' }}$');
graph_alpha_dot_n_1 = strcat('${\dot{\alpha}_{caso\,',graph_legend_caso_n_1,' }}$');



limiti_grafico_1 = 0; %1 per attivare
limite_x_1 = [0 10];
limite_y_1 = [-80 20];

limiti_grafico_2 = 0; %1 per attivare
limite_x_2 = [0 10];
limite_y_2 = [-80 20];

limiti_grafico_3 = 0; %1 per attivare
limite_x_3 = [0 10];
limite_y_3 = [-80 20];

limiti_grafico_4 = 0; %1 per attivare
limite_x_4 = [0 10];
limite_y_4 = [-80 20];


%% DISPLAY
figure(10)
set(gcf,'Units','centimeters','Position',[1 1 40 35],'color','white')       
ttttttt = tiledlayout(2,2, 'TileSpacing','compact', 'Padding', 'tight');
title(ttttttt, "TITOLO",'Interpreter','latex', 'FontSize', 22)  %%eventualmente




nexttile

caso_n          = '1';
signal_n_column = '1';
caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

plot(caso_n_time,caso_n_signal,...
    'LineWidth', 3);

hold on;
caso_n          = '2';
signal_n_column = '1';
caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

plot(caso_n_time,caso_n_signal,...
    'LineWidth', 3);


caso_n          = '3';
signal_n_column = '1';
caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

plot(caso_n_time,caso_n_signal,...
    'LineWidth', 3);



set(gca,'TickLabelInterpreter',"latex",'FontSize',22)

xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
ylabel(graph_alpha_beta,'Interpreter',"latex",'FontSize',22) 
legend(graph_theta_n, graph_theta_n_1,'interpreter','latex','FontSize',22, 'Location','southwest')

if(limiti_grafico_1 == 1)    
    xlim(limite_x_1)  
    %xticks(0:2000:10000)
    %xticklabels({'0','2','4','6','8','10'})
    ylim(limite_y_1)
    %yticks(0:0.2:1.2)
end
grid on;

title("Stima: $z$",'Interpreter','latex', 'FontSize', 22)




nexttile

caso_n          = '1';
signal_n_column = '2';
caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

plot(caso_n_time,caso_n_signal,...
    'LineWidth', 3);

hold on;
caso_n          = '2';
signal_n_column = '2';
caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

plot(caso_n_time,caso_n_signal,...
    'LineWidth', 3);


set(gca,'TickLabelInterpreter',"latex",'FontSize',22)

xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
ylabel(graph_alpha_beta,'Interpreter',"latex",'FontSize',22) 
legend(graph_alpha_n, graph_alpha_n_1,'interpreter','latex','FontSize',22, 'Location','southwest')

if(limiti_grafico_2 == 1)    
    xlim(limite_x_2)  
    %xticks(0:2000:10000)
    %xticklabels({'0','2','4','6','8','10'})
    ylim(limite_y_2)
    %yticks(0:0.2:1.2)
end
grid on;

title("Stima: $z$",'Interpreter','latex', 'FontSize', 22)


nexttile

caso_n          = '1';
signal_n_column = '3';
caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

plot(caso_n_time,caso_n_signal,...
    'LineWidth', 3);

hold on;
caso_n          = '2';
signal_n_column = '3';
caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

plot(caso_n_time,caso_n_signal,...
    'LineWidth', 3);


caso_n          = '3';
signal_n_column = '3';
caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

plot(caso_n_time,caso_n_signal,...
    'LineWidth', 3);



set(gca,'TickLabelInterpreter',"latex",'FontSize',22)

xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
ylabel(graph_alpha_beta_dot,'Interpreter',"latex",'FontSize',22) 
legend(graph_theta_dot_n,graph_theta_dot_n_1,'interpreter','latex','FontSize',22, 'Location','southwest')

if(limiti_grafico_3 == 1)    
    xlim(limite_x_3)  
    %xticks(0:2000:10000)
    %xticklabels({'0','2','4','6','8','10'})
    ylim(limite_y_3)
    %yticks(0:0.2:1.2)
end
grid on;

title("Stima: $z$",'Interpreter','latex', 'FontSize', 22)



nexttile

caso_n          = '1';
signal_n_column = '4';
caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

plot(caso_n_time,caso_n_signal,...
    'LineWidth', 3);

hold on;
caso_n          = '2';
signal_n_column = '4';
caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

plot(caso_n_time,caso_n_signal,...
    'LineWidth', 3);


set(gca,'TickLabelInterpreter',"latex",'FontSize',22)

xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
ylabel(graph_alpha_beta_dot,'Interpreter',"latex",'FontSize',22) 
legend(graph_alpha_dot_n,graph_alpha_dot_n_1,'interpreter','latex','FontSize',22, 'Location','southwest')

if(limiti_grafico_4 == 1)    
    xlim(limite_x_4)  
    %xticks(0:2000:10000)
    %xticklabels({'0','2','4','6','8','10'})
    ylim(limite_y_4)
    %yticks(0:0.2:1.2)
end
grid on;

title("Stima: $z$",'Interpreter','latex', 'FontSize', 22)
