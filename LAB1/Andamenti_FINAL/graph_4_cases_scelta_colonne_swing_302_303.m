%% ultima modifica 18_05_2023
%% NOTA cambiare riga 70 ----> 40x35 da variare se schermo piccolo!!!
%% load file

%%%
%%%
%%  NB
%%% Se son da rifare le misure chiamare il blocco simout e salvare di
%%% volta in volta il caso (save as caso1.mat) se no è da rifare tutto lo script 
%%% (se chiami simout con un altro nome ogni volta servirebbero 19 variabili ---> anche no ormai...).
%%



% caso300 = load('Oboe_projects-Andrea-s_Branch/caso300.mat');
% caso301 = load('Oboe_projects-Andrea-s_Branch/caso301.mat');
% caso302 = load('Oboe_projects-Andrea-s_Branch/caso302.mat');
% caso303 = load('Oboe_projects-Andrea-s_Branch/caso303.mat');




fprintf('\n');
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
numero_di_casi_da_confrontare = 3;%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_i_1 = '302';
caso_i_2 = '302';
caso_i_3 = '302';
caso_i_4 = '12';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%
%% COLONNE 
graph_fig_1_caso_i_1_column = '8';
graph_fig_1_caso_i_2_column = '1';
graph_fig_2_caso_i_1_column = '2';
graph_fig_2_caso_i_2_column = '2';
graph_fig_3_caso_i_1_column = '6';
graph_fig_3_caso_i_2_column = '3';
graph_fig_4_caso_i_1_column = '4';
graph_fig_4_caso_i_2_column = '4';
%% 
graph_fig_1_caso_i_3_column = '9';
graph_fig_1_caso_i_4_column = '1';
graph_fig_2_caso_i_3_column = '9';
graph_fig_2_caso_i_4_column = '2';
graph_fig_3_caso_i_3_column = '9';
graph_fig_3_caso_i_4_column = '3';
graph_fig_4_caso_i_3_column = '9';
graph_fig_4_caso_i_4_column = '4';
%%










% Da non modificare
caso      = 'caso';
plot_simulation = '.simulazione_out';
plot_signal = '.signals';
plot_values   = '.values';
plot_time   = '.time';
%%%
% Modificabile
graph_theta = '$\theta$ \,[Deg]';
graph_alpha = '$\alpha$ \,[Deg]';
graph_theta_dot = '$\dot{\theta}$ \, [Deg/s]';
graph_alpha_dot = '$\dot{\alpha}$ \, [Deg/s]';
graph_time  = '[s]';

%%
% Limiti asse x e y
limiti_grafico_1 = 0; %1 per attivare
limite_x_1 = [4 6];
%limite_y_1 = [-80 20];
limite_y_1 = 'padded';

limiti_grafico_2 = 0; %1 per attivare
limite_x_2 = [4 6];
%limite_y_2 = [-80 20];
limite_y_2 = 'padded';

limiti_grafico_3 = 0; %1 per attivare
limite_x_3 = [4 6];
%limite_y_3 = [-80 20];
limite_y_3 = 'padded'; 

limiti_grafico_4 = 0; %1 per attivare
limite_x_4 = [4 6];
%limite_y_4 = [-80 20];
limite_y_4 = 'padded';

%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Inizio plot
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
% Dimensione immagini e unione in 4 figure
figure(10)
set(gcf,'Units','centimeters','Position',[60 -6.5 40 28],'color','white')       
ttttttt = tiledlayout(2,2, 'TileSpacing','compact', 'Padding', 'tight');
%title(ttttttt, "TITOLO",'Interpreter','latex', 'FontSize', 22)  %%eventualmente

nexttile
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
% 1
%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n       = caso_i_1;%
signal_n_column = graph_fig_1_caso_i_1_column ;  %
%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf(strcat('\n Fig.1 caso  ',caso_n, ' colonna  ', signal_n_column)); 
graph_theta_n = strcat('${caso\,', caso_n,'}$');

caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

hLine= plot(caso_n_time,caso_n_signal,...
    'LineWidth', 1.5);
hLine.Color(4)=1;
            switch numero_di_casi_da_confrontare 
                case 1
                    set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
                    xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22)
                    ylabel(graph_theta,'Interpreter',"latex",'FontSize',22) 
                    legend(graph_theta_n,'interpreter','latex','FontSize',22, 'Location','southwest')
                
                case 2
hold on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n          =  caso_i_2;%
signal_n_column = graph_fig_1_caso_i_2_column ;      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf(strcat('\n Fig.1 caso  ',caso_n, ' colonna  ', signal_n_column)); 
graph_theta_n_1 = strcat('${{caso\,', caso_n,'}}$');

caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

hLine1=plot(caso_n_time,caso_n_signal,...
'LineWidth', 1.5);
hLine1.Color(4)=1;
set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22)
ylabel(graph_theta,'Interpreter',"latex",'FontSize',22) 
legend(graph_theta_n, graph_theta_n_1,'interpreter','latex','FontSize',22, 'Location','southwest')

                case 3
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_2; %
                    signal_n_column = graph_fig_1_caso_i_2_column ;      %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.1 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_theta_n_1 = strcat('${{caso\,', caso_n,'}}$');
                    
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    
                    plot(caso_n_time,caso_n_signal,...
                    'LineWidth', 1.5);
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_3;%
                    signal_n_column = graph_fig_1_caso_i_3_column ;     %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.1 caso  ',caso_n, ' colonna  ', signal_n_column));  
                    graph_theta_n_2 = strcat('${{caso\,', caso_n,'}}$');
            
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    plot(caso_n_time,caso_n_signal,'LineWidth', 1.5);
                    set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
                    xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22)
                    ylabel(graph_theta,'Interpreter',"latex",'FontSize',22) 
                    legend(graph_theta_n, graph_theta_n_1,graph_theta_n_2,'interpreter','latex','FontSize',22, 'Location','southwest')
                case 4 
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_2;%
                    signal_n_column = graph_fig_1_caso_i_2_column ;     %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.1 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_theta_n_1 = strcat('${{caso\,', caso_n,'}}$');
                    
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    
                    plot(caso_n_time,caso_n_signal,...
                    'LineWidth', 1.5);
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          =  caso_i_3;%
                    signal_n_column = graph_fig_1_caso_i_3_column ;      %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.1 caso  ',caso_n, ' colonna  ', signal_n_column));  
                    graph_theta_n_2 = strcat('${{caso\,', caso_n,'}}$');
            
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    plot(caso_n_time,caso_n_signal,'LineWidth', 1.5);
                    
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_4;%
                    signal_n_column = graph_fig_1_caso_i_4_column ;     %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.1 caso  ',caso_n, ' colonna  ', signal_n_column));  
                    graph_theta_n_3 = strcat('${{caso\,', caso_n,'}}$');
            
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    plot(caso_n_time,caso_n_signal,'LineWidth', 1.5);
                    set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
                    xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22)
                    ylabel(graph_theta,'Interpreter',"latex",'FontSize',22) 
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

title("Posizione braccio rotante",'Interpreter','latex', 'FontSize', 22)

nexttile
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
% 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n          =caso_i_1;%
signal_n_column = graph_fig_2_caso_i_1_column ;    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf(strcat('\n Fig.2 caso  ',caso_n, ' colonna  ', signal_n_column)); 
graph_alpha_n = strcat('${{caso\,', caso_n,'}}$');

caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

hLine=plot(caso_n_time,caso_n_signal,...
    'LineWidth', 1.5);
hLine.Color(4)=1;
            switch numero_di_casi_da_confrontare 
                case 1
                    set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
                    xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
                    ylabel(graph_alpha,'Interpreter',"latex",'FontSize',22) 
                    legend(graph_alpha_n,'interpreter','latex','FontSize',22, 'Location','southwest')

                case 2
hold on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n          =  caso_i_2;%
signal_n_column =  graph_fig_2_caso_i_2_column;      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf(strcat('\n Fig.2 caso  ',caso_n, ' colonna  ', signal_n_column)); 
graph_alpha_n_1 = strcat('${{caso\,', caso_n,'}}$');

caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

hLine1=plot(caso_n_time,caso_n_signal,...
'LineWidth', 1.5);
hLine1.Color(4)=1;
set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
ylabel(graph_alpha,'Interpreter',"latex",'FontSize',22) 
legend(graph_alpha_n, graph_alpha_n_1,'interpreter','latex','FontSize',22, 'Location','southwest')
                
                case 3 
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          =  caso_i_2;%
                    signal_n_column =  graph_fig_2_caso_i_2_column;      %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.2 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_alpha_n_1 = strcat('${{caso\,', caso_n,'}}$');
                    
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    
                    plot(caso_n_time,caso_n_signal,...
                    'LineWidth', 1.5);
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_3;%
                    signal_n_column =  graph_fig_2_caso_i_3_column;     %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.2 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_alpha_n_2 = strcat('${{caso\,', caso_n,'}}$');
            
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    plot(caso_n_time,caso_n_signal,'LineWidth', 1.5);
                    set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
                    xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
                    ylabel(graph_alpha,'Interpreter',"latex",'FontSize',22) 
                    legend(graph_alpha_n, graph_alpha_n_1,graph_alpha_n_2,'interpreter','latex','FontSize',22, 'Location','southwest')
                 case 4 
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          =  caso_i_2;%
                    signal_n_column =  graph_fig_2_caso_i_2_column;      %    
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.2 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_alpha_n_1 = strcat('${{caso\,', caso_n,'}}$');
                    
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    
                    plot(caso_n_time,caso_n_signal,...
                    'LineWidth', 1.5);
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_3;%
                    signal_n_column =  graph_fig_2_caso_i_3_column;     %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.2 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_alpha_n_2 = strcat('${{caso\,', caso_n,'}}$');
            
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    plot(caso_n_time,caso_n_signal,'LineWidth', 1.5);
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_4;%
                    signal_n_column =  graph_fig_2_caso_i_4_column;     %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.2 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_alpha_n_3 = strcat('${{caso\,', caso_n,'}}$');
            
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    plot(caso_n_time,caso_n_signal,'LineWidth', 1.5);
                    set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
                    xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
                    ylabel(graph_alpha,'Interpreter',"latex",'FontSize',22) 
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

title("Posizione pendolo",'Interpreter','latex', 'FontSize', 22)
%%
nexttile
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
% 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n          =caso_i_1;%
signal_n_column =  graph_fig_3_caso_i_1_column;    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf(strcat('\n Fig.3 caso  ',caso_n, ' colonna  ', signal_n_column)); 
graph_theta_dot_n = strcat('${{caso\,',caso_n,' }}$');

caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

hLine=plot(caso_n_time,caso_n_signal,...
    'LineWidth', 1.5);
hLine.Color(4)=1;
            switch numero_di_casi_da_confrontare 
                case 1
                    set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
                    xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
                    ylabel(graph_theta_dot,'Interpreter',"latex",'FontSize',22) 
                    legend(graph_theta_dot_n,'interpreter','latex','FontSize',22, 'Location','southwest')

                case 2

hold on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n          =  caso_i_2;%
signal_n_column = graph_fig_3_caso_i_2_column;      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf(strcat('\n Fig.3 caso  ',caso_n, ' colonna  ', signal_n_column)); 
graph_theta_dot_n_1 = strcat('${{caso\,',caso_n,' }}$');

caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

hLine1=plot(caso_n_time,caso_n_signal,...
'LineWidth', 1.5);
hLine1.Color(4)=1;
set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
ylabel(graph_theta_dot,'Interpreter',"latex",'FontSize',22) 
legend(graph_theta_dot_n,graph_theta_dot_n_1,'interpreter','latex','FontSize',22, 'Location','southwest')
                
                case 3 
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          =  caso_i_2;%
                    signal_n_column = graph_fig_3_caso_i_2_column;      %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.3 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_theta_dot_n_1 = strcat('${{caso\,',caso_n,' }}$');
                    
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    
                    plot(caso_n_time,caso_n_signal,...
                    'LineWidth', 1.5);
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_3;%
                    signal_n_column = graph_fig_3_caso_i_3_column;     %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.3 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_theta_dot_n_2 = strcat('${{caso\,',caso_n,' }}$');
            
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    plot(caso_n_time,caso_n_signal,'LineWidth', 1.5);
                    set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
                    xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
                    ylabel(graph_theta_dot,'Interpreter',"latex",'FontSize',22) 
                    legend(graph_theta_dot_n,graph_theta_dot_n_1,graph_theta_dot_n_2,'interpreter','latex','FontSize',22, 'Location','southwest')
                case 4 
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          =  caso_i_2;%
                    signal_n_column = graph_fig_3_caso_i_2_column;      %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.3 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_theta_dot_n_1 = strcat('${{caso\,',caso_n,' }}$');
                    
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    
                    plot(caso_n_time,caso_n_signal,...
                    'LineWidth', 1.5);
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_3;%
                    signal_n_column = graph_fig_3_caso_i_3_column;     %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.3 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_theta_dot_n_2 = strcat('${{caso\,',caso_n,' }}$');
            
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    plot(caso_n_time,caso_n_signal,'LineWidth', 1.5);
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_4;%
                    signal_n_column = graph_fig_3_caso_i_4_column;     %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.3 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_theta_dot_n_3 = strcat('${{caso\,',caso_n,' }}$');
            
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    plot(caso_n_time,caso_n_signal,'LineWidth', 1.5);
                    set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
                    xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
                    ylabel(graph_theta_dot,'Interpreter',"latex",'FontSize',22) 
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

title("Velocit\'a braccio rotante",'Interpreter','latex', 'FontSize', 22)

nexttile
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
% 4
%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n          =caso_i_1;%
signal_n_column = graph_fig_4_caso_i_1_column;    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf(strcat('\n Fig.4 caso  ',caso_n, ' colonna  ', signal_n_column)); 
graph_alpha_dot_n = strcat('${{caso\,',caso_n,' }}$');

caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

hLine= plot(caso_n_time,caso_n_signal,...
    'LineWidth', 1.5);
hLine.Color(4)=1;
            switch numero_di_casi_da_confrontare 
                case 1
                    set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
                    xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
                    ylabel(graph_alpha_dot,'Interpreter',"latex",'FontSize',22) 
                    legend(graph_alpha_dot_n,'interpreter','latex','FontSize',22, 'Location','southwest')

                case 2
hold on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n          =  caso_i_2;%
signal_n_column = graph_fig_4_caso_i_2_column;      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf(strcat('\n Fig.4 caso  ',caso_n, ' colonna  ', signal_n_column)); 
graph_alpha_dot_n_1 = strcat('${{caso\,',caso_n,' }}$');

caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;

hLine1=plot(caso_n_time,caso_n_signal,...
'LineWidth', 1.5);
hLine1.Color(4)=1;
set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
ylabel(graph_alpha_dot,'Interpreter',"latex",'FontSize',22) 
legend(graph_alpha_dot_n,graph_alpha_dot_n_1,'interpreter','latex','FontSize',22, 'Location','southwest')
                
                case 3 
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          =  caso_i_2;%
                    signal_n_column = graph_fig_4_caso_i_2_column;      %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.4 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_alpha_dot_n_1 = strcat('${{caso\,',caso_n,' }}$');
                    
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    
                    plot(caso_n_time,caso_n_signal,...
                    'LineWidth', 1.5);
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_3;%
                    signal_n_column = graph_fig_4_caso_i_3_column;     %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.4 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_alpha_dot_n_2 = strcat('${{caso\,',caso_n,' }}$');
            
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    plot(caso_n_time,caso_n_signal,'LineWidth', 1.5);
                    set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
                    xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
                    ylabel(graph_alpha_dot,'Interpreter',"latex",'FontSize',22) 
                    legend(graph_alpha_dot_n,graph_alpha_dot_n_1,graph_alpha_dot_n_2,'interpreter','latex','FontSize',22, 'Location','southwest')
                case 4 
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          =  caso_i_2;%
                    signal_n_column = graph_fig_4_caso_i_2_column;      %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.4 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_alpha_dot_n_1 = strcat('${{caso\,',caso_n,' }}$');
                    
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    
                    plot(caso_n_time,caso_n_signal,...
                    'LineWidth', 1.5);
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_3;%
                    signal_n_column = graph_fig_4_caso_i_3_column;     %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.4 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_alpha_dot_n_2 = strcat('${{caso\,',caso_n,' }}$');
            
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    plot(caso_n_time,caso_n_signal,'LineWidth', 1.5);
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_4;%
                    signal_n_column = graph_fig_4_caso_i_4_column;     %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.4 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_alpha_dot_n_3 = strcat('${{caso\,',caso_n,' }}$');
            
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'))*180/pi;
                    plot(caso_n_time,caso_n_signal,'LineWidth', 1.5);
                    set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
                    xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22) 
                    ylabel(graph_alpha_dot,'Interpreter',"latex",'FontSize',22) 
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

title("Velocit\'a pendolo",'Interpreter','latex', 'FontSize', 22)
fprintf('\n');











