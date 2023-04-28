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

%% DA MODIFICARE


caso      = 'caso';
plot_simulation = '.simulazione_out';
plot_signal = '.signals';
plot_values   = '.values';
plot_time   = '.time';

caso_n_legend       = '\n 1'; 
caso_n_1_legend     = '\n 2'; 
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


%% Plot figure
%% caso 7) posizione theta
%
%
%
%
%
%
figure(1)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n          = '1';
signal_n_column = '1';
caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
set(gcf,'Position',[100 100 600 600])
% fontsize(gcf,scale=1.3)
grid on
hLine1=plot(caso_n_time,caso_n_signal,...
    'LineStyle','-',...
    'LineWidth',1.5,...
    'Color', 'r');
hold on 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n          = '2';
signal_n_column = '1';
caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time))*180/pi;
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

hLine=plot(caso_n_time,caso_n_signal,...
    'LineStyle','-',...
    'LineWidth',1.5,...
    'Color', 'b');

hLine.Color(4)=1;
hLine1.Color(4)=1;

hold off
xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',20) 
ylabel(graph_alpha_beta,'Interpreter',"latex",'FontSize',20) 
legend(graph_theta_n, graph_theta_n_1,'interpreter','latex','FontSize',22, 'Location','southwest')
fontsize(gca,scale=1.3)
xlim([0 15])
axis tight


%% caso 7) posizione alpha
%
%
%
%
%
%
%
figure(2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n          = '1';
signal_n_column = '2';
caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time))*180/pi;
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

set(gcf,'Position',[100 100 600 600])
% fontsize(gcf,scale=1.3)
grid on
hLine1=plot(caso_n_time,caso_n_signal,...
    'LineStyle','-',...
    'LineWidth',1.5,...
    'Color', 'r');
hold on 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n          = '2';
signal_n_column = '2';
caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time))*180/pi;
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

hLine=plot(caso_n_time,caso_n_signal,...
    'LineStyle','-',...
    'LineWidth',1.5,...
    'Color', 'b');

hLine.Color(4)=1;
hLine1.Color(4)=1;

hold off
xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',20) 
ylabel(graph_alpha_beta,'Interpreter',"latex",'FontSize',20) 
legend(graph_alpha_n, graph_alpha_n_1,'interpreter','latex','FontSize',22, 'Location','southwest')
fontsize(gca,scale=1.3)
xlim([0 15])
axis tight

%% caso 7) velocità theta
%
%
%
%
%
%
%
figure(3)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n          = '1';
signal_n_column = '3';
caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time))*180/pi;
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
set(gcf,'Position',[100 100 600 600])
% fontsize(gcf,scale=1.3)
grid on
hLine1=plot(caso_n_time,caso_n_signal,...
    'LineStyle','-',...
    'LineWidth',1.5,...
    'Color', 'r');
hold on 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n          = '2';
signal_n_column = '3';
caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time))*180/pi;
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
hLine=plot(caso_n_time,caso_n_signal,...
    'LineStyle','-',...
    'LineWidth',1.5,...
    'Color', 'b');

hLine.Color(4)=1;
hLine1.Color(4)=1;

hold off
xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',20) 
ylabel(graph_alpha_beta_dot,'Interpreter',"latex",'FontSize',20) 
legend(graph_theta_dot_n,graph_theta_dot_n_1,'interpreter','latex','FontSize',22, 'Location','southwest')
fontsize(gca,scale=1.3)
xlim([0 15])
axis tight

%% caso 7) velocità alpha
%
%
%
%
%
%
%
figure(4)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n          = '1';
signal_n_column = '4';
caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time))*180/pi;
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
set(gcf,'Position',[100 100 600 600])
% fontsize(gcf,scale=1.3)
grid on
hLine1=plot(caso16.simulazione_out.time,caso16.simulazione_out.signals.values(:,4),...
    'LineStyle','-',...
    'LineWidth',1.5,...
    'Color', 'r');
hold on 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n          = '2';
signal_n_column = '4';
caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time))*180/pi;
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
hLine=plot(caso17.simulazione_out.time,caso17.simulazione_out.signals.values(:,4),...
    'LineStyle','-',...
    'LineWidth',1.5,...
    'Color', 'b');


hLine.Color(4)=1;
hLine1.Color(4)=1;

hold off
xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',20) 
ylabel(graph_alpha_beta_dot,'Interpreter',"latex",'FontSize',20) 
legend(graph_alpha_dot_n,graph_alpha_dot_n_1,'interpreter','latex','FontSize',22, 'Location','southwest')
fontsize(gca,scale=1.3)
xlim([0 15])
axis tight
