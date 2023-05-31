%% ultima modifica 18_05_2023
%% NOTA cambiare riga 70 ----> 40x35 da variare se schermo piccolo!!!
%% load file
%clear variables
%clc
%%%
%%%
%%  NB
%%% Se son da rifare le misure chiamare il blocco simout e salvare di
%%% volta in volta il caso (save as caso1.mat) se no è da rifare tutto lo script 
%%% (se chiami simout con un altro nome ogni volta servirebbero 19 variabili ---> anche no ormai...).
%%
%%%
% caso1 = load('Oboe_projects-Andrea-s_Branch/caso1.mat');
% caso2 = load('Oboe_projects-Andrea-s_Branch/caso2.mat');
% caso3 = load('Oboe_projects-Andrea-s_Branch/caso3.mat');
% caso4 = load('Oboe_projects-Andrea-s_Branch/caso4.mat');
% caso5 = load('Oboe_projects-Andrea-s_Branch/caso5.mat');
% caso6 = load('Oboe_projects-Andrea-s_Branch/caso6.mat');
% caso7 = load('Oboe_projects-Andrea-s_Branch/caso7.mat');
% caso8 = load('Oboe_projects-Andrea-s_Branch/caso8.mat');
% caso9 = load('Oboe_projects-Andrea-s_Branch/caso9.mat');
% caso10 = load('Oboe_projects-Andrea-s_Branch/caso10.mat');
% caso11 = load('Oboe_projects-Andrea-s_Branch/caso11.mat');
% caso12 = load('Oboe_projects-Andrea-s_Branch/caso12.mat');
% caso13 = load('Oboe_projects-Andrea-s_Branch/caso13.mat');
% caso14 = load('Oboe_projects-Andrea-s_Branch/caso14.mat');
% caso15 = load('Oboe_projects-Andrea-s_Branch/caso15.mat');
% caso16 = load('Oboe_projects-Andrea-s_Branch/caso16.mat');
% caso17 = load('Oboe_projects-Andrea-s_Branch/caso17.mat');
% caso18 = load('Oboe_projects-Andrea-s_Branch/caso18.mat');
% 
% caso21 = load('Oboe_projects-Andrea-s_Branch/caso21.mat');
% caso22 = load('Oboe_projects-Andrea-s_Branch/caso22.mat');
% caso23 = load('Oboe_projects-Andrea-s_Branch/caso23.mat');
% caso24 = load('Oboe_projects-Andrea-s_Branch/caso24.mat');
% caso25 = load('Oboe_projects-Andrea-s_Branch/caso25.mat');
% caso26 = load('Oboe_projects-Andrea-s_Branch/caso26.mat');
% caso27 = load('Oboe_projects-Andrea-s_Branch/caso27.mat');
% caso28 = load('Oboe_projects-Andrea-s_Branch/caso28.mat');
% caso29 = load('Oboe_projects-Andrea-s_Branch/caso29.mat');
% caso30 = load('Oboe_projects-Andrea-s_Branch/caso30.mat');
% caso31 = load('Oboe_projects-Andrea-s_Branch/caso31.mat');
% caso32 = load('Oboe_projects-Andrea-s_Branch/caso32.mat');
% caso33 = load('Oboe_projects-Andrea-s_Branch/caso33.mat');
% caso34 = load('Oboe_projects-Andrea-s_Branch/caso34.mat');
% caso35 = load('Oboe_projects-Andrea-s_Branch/caso35.mat');
% caso36 = load('Oboe_projects-Andrea-s_Branch/caso36.mat');
% caso37 = load('Oboe_projects-Andrea-s_Branch/caso37.mat');
% caso38 = load('Oboe_projects-Andrea-s_Branch/caso38.mat');

% caso200 = load('Oboe_projects-Andrea-s_Branch/caso200.mat');
% caso201 = load('Oboe_projects-Andrea-s_Branch/caso201.mat');
% caso202 = load('Oboe_projects-Andrea-s_Branch/caso202.mat');
% caso210 = load('Oboe_projects-Andrea-s_Branch/caso210.mat');
% caso211 = load('Oboe_projects-Andrea-s_Branch/caso211.mat');
% caso212 = load('Oboe_projects-Andrea-s_Branch/caso212.mat');

% caso100 = load('Oboe_projects-Andrea-s_Branch/caso100.mat');
% caso101 = load('Oboe_projects-Andrea-s_Branch/caso101.mat');
% caso102 = load('Oboe_projects-Andrea-s_Branch/caso102.mat');
% caso103 = load('Oboe_projects-Andrea-s_Branch/caso103.mat');
% caso105 = load('Oboe_projects-Andrea-s_Branch/caso105.mat');
% caso106 = load('Oboe_projects-Andrea-s_Branch/caso106.mat');

% caso300 = load('Oboe_projects-Andrea-s_Branch/caso300.mat');
% caso301 = load('Oboe_projects-Andrea-s_Branch/caso301.mat');
% caso302 = load('Oboe_projects-Andrea-s_Branch/caso302.mat');
% caso303 = load('Oboe_projects-Andrea-s_Branch/caso303.mat');


%% Automatizzazione per il plot
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Per modificare colonne e casi scendi su ogni plot 
%%%
% Da modificare:( valori possibili 1, 2,3,4)
% 1 --> per caso 18
% 3 --> caso 1 2 e 3
% 4 --> caso 14 15 16 e 17
% 2 --> tutti gli altri casi --> per questo il case 2 è non allineato cosi
% poi si va bene a scendere e cambiare

%%%%%%%%%%%%%%%%%
% Da modificare %
%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
numero_di_casi_da_confrontare =2;%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_i_1 = '300';
caso_i_2 = '301';
caso_i_3 = '106';
caso_i_4 = '9';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%



% Da non modificare
caso      = 'caso';
plot_simulation = '.simulazione_out';
plot_signal = '.signals';
plot_values   = '.values';
plot_time   = '.time';
%%%
% Modificabile
graph_alpha_beta = '[Deg]';
graph_alpha_beta_dot = '[Deg/s]';
graph_time  = '[s]';

%%
% Limiti asse x e y
limiti_grafico_1 = 0; %1 per attivare
limite_x_1 = [4.5 6];
%limite_y_1 = [-80 20];
limite_y_1 = 'tight';

limiti_grafico_2 = 0; %1 per attivare
limite_x_2 = [4.5 6];
limite_y_2 = [-10 10];
%limite_y_2 = 'tight';

limiti_grafico_3 = 0; %1 per attivare
limite_x_3 = [4.5 6];
%limite_y_3 = [-80 20];
limite_y_3 = 'padded'; 

limiti_grafico_4 = 0; %1 per attivare
limite_x_4 = [4.5 6];
%limite_y_4 = [-80 20];
limite_y_4 = 'tight';

%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Inizio plot
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
% Dimensione immagini e unione in 4 figure
figure(10) 
set(gcf,'Units','centimeters','Position',[1 1 40 28],'color','white')       
ttttttt = tiledlayout(2,2, 'TileSpacing','compact', 'Padding', 'tight');
%title(ttttttt, "TITOLO",'Interpreter','latex', 'FontSize', 22)  %%eventualmente

nexttile
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
% 1
%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n       = caso_i_1;%
signal_n_column = '1';  %
%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf(strcat('\n Fig.1 caso  ',caso_n, ' colonna  ', signal_n_column)); 
graph_theta_n = strcat('${{\theta}_{caso\,', caso_n,'}}$');

caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

plot(caso_n_time,caso_n_signal,...
    'LineWidth', 1.5);

            switch numero_di_casi_da_confrontare 
                case 1
                    set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
                    xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22)
                    ylabel(graph_alpha_beta,'Interpreter',"latex",'FontSize',22) 
                    legend(graph_theta_n,'interpreter','latex','FontSize',22, 'Location','southwest')
                
                case 2
hold on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n          =  caso_i_2;%
signal_n_column = '1';      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf(strcat('\n Fig.1 caso  ',caso_n, ' colonna  ', signal_n_column)); 
graph_theta_n_1 = strcat('${{\theta}_{caso\,', caso_n,'}}$');

caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

plot(caso_n_time,caso_n_signal,...
'LineWidth', 1.5);
set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22)
ylabel(graph_alpha_beta,'Interpreter',"latex",'FontSize',22) 
legend(graph_theta_n, graph_theta_n_1,'interpreter','latex','FontSize',22, 'Location','southwest')

                case 3
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_2; %
                    signal_n_column = '1';      %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.1 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_theta_n_1 = strcat('${{\theta}_{caso\,', caso_n,'}}$');
                    
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    
                    plot(caso_n_time,caso_n_signal,...
                    'LineWidth', 1.5);
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_3;%
                    signal_n_column = '1';     %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.1 caso  ',caso_n, ' colonna  ', signal_n_column));  
                    graph_theta_n_2 = strcat('${{\theta}_{caso\,', caso_n,'}}$');
            
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    plot(caso_n_time,caso_n_signal,'LineWidth', 1.5);
                    set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
                    xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22)
                    ylabel(graph_alpha_beta,'Interpreter',"latex",'FontSize',22) 
                    legend(graph_theta_n, graph_theta_n_1,graph_theta_n_2,'interpreter','latex','FontSize',22, 'Location','southwest')
                case 4 
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_2;%
                    signal_n_column = '1';     %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.1 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_theta_n_1 = strcat('${{\theta}_{caso\,', caso_n,'}}$');
                    
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    
                    plot(caso_n_time,caso_n_signal,...
                    'LineWidth', 1.5);
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          =  caso_i_3;%
                    signal_n_column = '1';      %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.1 caso  ',caso_n, ' colonna  ', signal_n_column));  
                    graph_theta_n_2 = strcat('${{\theta}_{caso\,', caso_n,'}}$');
            
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    plot(caso_n_time,caso_n_signal,'LineWidth', 1.5);
                    
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_4;%
                    signal_n_column = '1';     %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.1 caso  ',caso_n, ' colonna  ', signal_n_column));  
                    graph_theta_n_3 = strcat('${{\theta}_{caso\,', caso_n,'}}$');
            
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    plot(caso_n_time,caso_n_signal,'LineWidth', 1.5);
                    set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
                    xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22)
                    ylabel(graph_alpha_beta,'Interpreter',"latex",'FontSize',22) 
                    legend(graph_theta_n, graph_theta_n_1,graph_theta_n_2,graph_theta_n_3,'interpreter','latex','FontSize',22, 'Location','southwest')
                otherwise
                    error('Gatu sbaglià cojon');
            end

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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
% 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n          =caso_i_1;%
signal_n_column = '2';    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf(strcat('\n Fig.2 caso  ',caso_n, ' colonna  ', signal_n_column)); 
graph_alpha_n = strcat('${{\alpha}_{caso\,', caso_n,'}}$');

caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

plot(caso_n_time,caso_n_signal,...
    'LineWidth', 1.5);

            switch numero_di_casi_da_confrontare 
                case 1
                    set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
                    xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
                    ylabel(graph_alpha_beta,'Interpreter',"latex",'FontSize',22) 
                    legend(graph_alpha_n,'interpreter','latex','FontSize',22, 'Location','southwest')

                case 2
hold on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n          =  caso_i_2;%
signal_n_column = '2';      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf(strcat('\n Fig.2 caso  ',caso_n, ' colonna  ', signal_n_column)); 
graph_alpha_n_1 = strcat('${{\alpha}_{caso\,', caso_n,'}}$');

caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

plot(caso_n_time,caso_n_signal,...
'LineWidth', 1.5);

set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
ylabel(graph_alpha_beta,'Interpreter',"latex",'FontSize',22) 
legend(graph_alpha_n, graph_alpha_n_1,'interpreter','latex','FontSize',22, 'Location','southwest')
                
                case 3 
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          =  caso_i_2;%
                    signal_n_column = '2';      %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.2 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_alpha_n_1 = strcat('${{\alpha}_{caso\,', caso_n,'}}$');
                    
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    
                    plot(caso_n_time,caso_n_signal,...
                    'LineWidth', 1.5);
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_3;%
                    signal_n_column = '2';     %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.2 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_alpha_n_2 = strcat('${{\alpha}_{caso\,', caso_n,'}}$');
            
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    plot(caso_n_time,caso_n_signal,'LineWidth', 1.5);
                    set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
                    xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
                    ylabel(graph_alpha_beta,'Interpreter',"latex",'FontSize',22) 
                    legend(graph_alpha_n, graph_alpha_n_1,graph_alpha_n_2,'interpreter','latex','FontSize',22, 'Location','southwest')
                 case 4 
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          =  caso_i_2;%
                    signal_n_column = '2';      %    
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.2 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_alpha_n_1 = strcat('${{\alpha}_{caso\,', caso_n,'}}$');
                    
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    
                    plot(caso_n_time,caso_n_signal,...
                    'LineWidth', 1.5);
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_3;%
                    signal_n_column = '2';     %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.2 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_alpha_n_2 = strcat('${{\alpha}_{caso\,', caso_n,'}}$');
            
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    plot(caso_n_time,caso_n_signal,'LineWidth', 1.5);
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_4;%
                    signal_n_column = '2';     %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.2 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_alpha_n_3 = strcat('${{\alpha}_{caso\,', caso_n,'}}$');
            
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    plot(caso_n_time,caso_n_signal,'LineWidth', 1.5);
                    set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
                    xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
                    ylabel(graph_alpha_beta,'Interpreter',"latex",'FontSize',22) 
                    legend(graph_alpha_n, graph_alpha_n_1,graph_alpha_n_2,graph_alpha_n_3,'interpreter','latex','FontSize',22, 'Location','southwest')
            
                otherwise
                    error('Gatu sbaglià cojon');
            end

if(limiti_grafico_2 == 1)    
    xlim(limite_x_2)
    %xticks(0:2000:10000)
    %xticklabels({'0','2','4','6','8','10'})
    ylim(limite_y_2)
    %yticks(0:0.2:1.2)
end
grid on;

title("Stima: $z$",'Interpreter','latex', 'FontSize', 22)
%%
nexttile
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
% 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n          =caso_i_1;%
signal_n_column = '3';    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf(strcat('\n Fig.3 caso  ',caso_n, ' colonna  ', signal_n_column)); 
graph_theta_dot_n = strcat('${\dot{\theta}_{caso\,',caso_n,' }}$');

caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

plot(caso_n_time,caso_n_signal,...
    'LineWidth', 1.5);

            switch numero_di_casi_da_confrontare 
                case 1
                    set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
                    xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
                    ylabel(graph_alpha_beta_dot,'Interpreter',"latex",'FontSize',22) 
                    legend(graph_theta_dot_n,'interpreter','latex','FontSize',22, 'Location','southwest')

                case 2

hold on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n          =  caso_i_2;%
signal_n_column = '3';      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf(strcat('\n Fig.3 caso  ',caso_n, ' colonna  ', signal_n_column)); 
graph_theta_dot_n_1 = strcat('${\dot{\theta}_{caso\,',caso_n,' }}$');

caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

plot(caso_n_time,caso_n_signal,...
'LineWidth', 1.5);
set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
ylabel(graph_alpha_beta_dot,'Interpreter',"latex",'FontSize',22) 
legend(graph_theta_dot_n,graph_theta_dot_n_1,'interpreter','latex','FontSize',22, 'Location','southwest')
                
                case 3 
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          =  caso_i_2;%
                    signal_n_column = '3';      %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.3 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_theta_dot_n_1 = strcat('${\dot{\theta}_{caso\,',caso_n,' }}$');
                    
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    
                    plot(caso_n_time,caso_n_signal,...
                    'LineWidth', 1.5);
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_3;%
                    signal_n_column = '3';     %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.3 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_theta_dot_n_2 = strcat('${\dot{\theta}_{caso\,',caso_n,' }}$');
            
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    plot(caso_n_time,caso_n_signal,'LineWidth', 1.5);
                    set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
                    xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
                    ylabel(graph_alpha_beta_dot,'Interpreter',"latex",'FontSize',22) 
                    legend(graph_theta_dot_n,graph_theta_dot_n_1,graph_theta_dot_n_2,'interpreter','latex','FontSize',22, 'Location','southwest')
                case 4 
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          =  caso_i_2;%
                    signal_n_column = '3';      %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.3 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_theta_dot_n_1 = strcat('${\dot{\theta}_{caso\,',caso_n,' }}$');
                    
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    
                    plot(caso_n_time,caso_n_signal,...
                    'LineWidth', 1.5);
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_3;%
                    signal_n_column = '3';     %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.3 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_theta_dot_n_2 = strcat('${\dot{\theta}_{caso\,',caso_n,' }}$');
            
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    plot(caso_n_time,caso_n_signal,'LineWidth', 1.5);
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_4;%
                    signal_n_column = '3';     %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.3 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_theta_dot_n_3 = strcat('${\dot{\theta}_{caso\,',caso_n,' }}$');
            
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    plot(caso_n_time,caso_n_signal,'LineWidth', 1.5);
                    set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
                    xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
                    ylabel(graph_alpha_beta_dot,'Interpreter',"latex",'FontSize',22) 
                    legend(graph_theta_dot_n,graph_theta_dot_n_1,graph_theta_dot_n_2,graph_theta_dot_n_3,'interpreter','latex','FontSize',22, 'Location','southwest')
            
                otherwise
                    error('Gatu sbaglià cojon');
            end

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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
% 4
%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n          =caso_i_1;%
signal_n_column = '4';    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf(strcat('\n Fig.4 caso  ',caso_n, ' colonna  ', signal_n_column)); 
graph_alpha_dot_n = strcat('${\dot{\alpha}_{caso\,',caso_n,' }}$');

caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

plot(caso_n_time,caso_n_signal,...
    'LineWidth', 1.5);

            switch numero_di_casi_da_confrontare 
                case 1
                    set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
                    xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
                    ylabel(graph_alpha_beta_dot,'Interpreter',"latex",'FontSize',22) 
                    legend(graph_alpha_dot_n,'interpreter','latex','FontSize',22, 'Location','southwest')

                case 2
hold on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n          =  caso_i_2;%
signal_n_column = '4';      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf(strcat('\n Fig.4 caso  ',caso_n, ' colonna  ', signal_n_column)); 
graph_alpha_dot_n_1 = strcat('${\dot{\alpha}_{caso\,',caso_n,' }}$');

caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

plot(caso_n_time,caso_n_signal,...
'LineWidth', 1.5);
set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
ylabel(graph_alpha_beta_dot,'Interpreter',"latex",'FontSize',22) 
legend(graph_alpha_dot_n,graph_alpha_dot_n_1,'interpreter','latex','FontSize',22, 'Location','southwest')
                
                case 3 
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          =  caso_i_2;%
                    signal_n_column = '4';      %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.4 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_alpha_dot_n_1 = strcat('${\dot{\alpha}_{caso\,',caso_n,' }}$');
                    
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    
                    plot(caso_n_time,caso_n_signal,...
                    'LineWidth', 1.5);
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_3;%
                    signal_n_column = '4';     %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.4 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_alpha_dot_n_2 = strcat('${\dot{\alpha}_{caso\,',caso_n,' }}$');
            
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    plot(caso_n_time,caso_n_signal,'LineWidth', 1.5);
                    set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
                    xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
                    ylabel(graph_alpha_beta_dot,'Interpreter',"latex",'FontSize',22) 
                    legend(graph_alpha_dot_n,graph_alpha_dot_n_1,graph_alpha_dot_n_2,'interpreter','latex','FontSize',22, 'Location','southwest')
                case 4 
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          =  caso_i_2;%
                    signal_n_column = '4';      %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.4 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_alpha_dot_n_1 = strcat('${\dot{\alpha}_{caso\,',caso_n,' }}$');
                    
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    
                    plot(caso_n_time,caso_n_signal,...
                    'LineWidth', 1.5);
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_3;%
                    signal_n_column = '4';     %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.4 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_alpha_dot_n_2 = strcat('${\dot{\alpha}_{caso\,',caso_n,' }}$');
            
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    plot(caso_n_time,caso_n_signal,'LineWidth', 1.5);
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_4;%
                    signal_n_column = '4';     %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.4 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_alpha_dot_n_3 = strcat('${\dot{\alpha}_{caso\,',caso_n,' }}$');
            
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    plot(caso_n_time,caso_n_signal,'LineWidth', 1.5);
                    set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
                    xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
                    ylabel(graph_alpha_beta_dot,'Interpreter',"latex",'FontSize',22) 
                    legend(graph_alpha_dot_n,graph_alpha_dot_n_1,graph_alpha_dot_n_2,graph_alpha_dot_n_3,'interpreter','latex','FontSize',22, 'Location','southwest')
            
                otherwise
                    error('Gatu sbaglià cojon');
            end

if(limiti_grafico_4 == 1)    
    xlim(limite_x_4)  
    %xticks(0:2000:10000)
    %xticklabels({'0','2','4','6','8','10'})
    ylim(limite_y_4)
    %yticks(0:0.2:1.2)
end
grid on;

title("Stima: $z$",'Interpreter','latex', 'FontSize', 22)
fprintf('\n');










%% Backup inutile
%graph_legend_caso_n   = '1';
%graph_legend_caso_n_1 = '2';
%graph_theta_n = strcat('${{\theta}_{caso\,', graph_legend_caso_n,'}}$');
%graph_alpha_n = strcat('${{\alpha}_{caso\,', graph_legend_caso_n,'}}$');
%graph_theta_n_1 = strcat('${{\theta}_{caso\,', graph_legend_caso_n_1,'}}$');
%graph_alpha_n_1 = strcat('${{\alpha}_{caso\,', graph_legend_caso_n_1,'}}$');
%graph_theta_dot_n = strcat('${\dot{\theta}_{caso\,',graph_legend_caso_n,' }}$');
% graph_theta_dot_n_1 = strcat('${\dot{\theta}_{caso\,',graph_legend_caso_n_1,' }}$');
%graph_alpha_dot_n = strcat('${\dot{\alpha}_{caso\,',graph_legend_caso_n,' }}$');
%graph_alpha_dot_n_1 = strcat('${\dot{\alpha}_{caso\,',graph_legend_caso_n_1,' }}$');

% se ho 3 casi da plottare --> per il caso 3 (unico)
%graph_legend_caso_n_2 = '3';
%graph_theta_n_2 = strcat('${{\theta}_{caso\,', graph_legend_caso_n_2,'}}$');
%graph_alpha_n_2 = strcat('${{\alpha}_{caso\,', graph_legend_caso_n_2,'}}$');
%graph_theta_dot_n_2 = strcat('${\dot{\theta}_{caso\,',graph_legend_caso_n_2,' }}$');
%graph_alpha_dot_n_2 = strcat('${\dot{\alpha}_{caso\,',graph_legend_caso_n_2,' }}$');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
