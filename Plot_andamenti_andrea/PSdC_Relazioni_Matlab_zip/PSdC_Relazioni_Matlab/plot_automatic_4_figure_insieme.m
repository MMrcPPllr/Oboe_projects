%% ultima modifica 18_05_2023
%% NOTA cambiare riga 70 ----> 40x35 da variare se schermo piccolo!!!
%% load file
clear variables
clc
%%%
%%%
%%  NB
%%% Se son da rifare le misure chiamare il blocco simout e salvare di
%%% volta in volta il caso (save as caso1.mat) se no è da rifare tutto lo script 
%%% (se chiami simout con un altro nome ogni volta servirebbero 19 variabili ---> anche no ormai...).
%%
%%%
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
%% Commenti dei vari casi
fprintf(' COMMENTI detti durante il laboratorio: \n')
disp('caso 1: non buono --> non mantiene la posizione il motore (rotary) + ROBUSTO al disturbo ');
disp('caso 2: ROBUSTO + non tiene la posizione (come caso 1) ');
disp('caso 3: ROBUSTO + sembra tenere meglio la posizione rispetto al caso 1 e 2');
disp('caso 4: GOOD ! --> ROBUSTO + tiene la posizione ');
disp('caso 5: GOOD ! --> meglio del caso 4 FORSE ');
disp('caso 6: non tiene la posizione ma ROBUSTO all impulso (nel senso che non cade all applicazione del disturbo)');
disp('caso 7: meglio di caso 1 2 e 6 ma comunque non tiene la posizione + ROBUSTO + va verso lo 0 ma lentamente');
disp('caso 8: vibra e non tiene la posizione + ROBUSTO');
disp('caso 9: non tiene NIENTE -->  motore vibra --> non sta su + NON ROBUSTO (forse fare come aveva detto OBOE di fare +- 30 gradi????) ');
disp('caso 10: motore molto aggressivo --> sembra il più aggressivo (all impulso) finora + tiene la posizione (va lentamente a 0) + ROBUSTO + vibra poco');
disp('caso 11: vibra + ROBUSTO + non tiene la posizione');
disp('caso 12: non tiene la posizione bene --> non va verso 0 + ROBUSTO al disturbo');
disp('caso 13: non tiene per niente la posizione --> peggio di caso 12 ma non vibra + ROBUSTO all impulso ');
disp('caso 14: non tiene impulso e neanche la posizione');
disp('caso 15: oscilla troppo al minimo disturbo e tende a cadere --> vibra un casino ma riesce a tenere la posizione a 0');
disp('caso 16: NB: è il caso 1: impulso lo tiene (forse un po sovraelonga) + ROBUSTO all impulso + sta su ma non tiene la posizione (non va verso lo 0)');
disp('caso 17: ROBUSTO (sta su) + vibra un po ma riesce a stare allo 0 --> tiene la posizione più o meno');
disp('caso 18: sta a 0 ma neanche il disturbo a 3 s tiene --> è INSTABILE (sta su per miracolo) ');
disp('caso 19: Non risolvibile ');

%% Commenti post-processing
%%%
% Dalla teoria 
% R grande --> minimizzo energia di controllo (expensive control)
% R piccola --> cheap control
% Q grande --> meno cambiamenti per lo stato
%%% 
% Commenti visti post processing
fprintf('\n \n COMMENTI post processing: \n')
fprintf('caso 1,2 e 3: è sensato... a parità di Q, la risposta dovrebbe essere\n tanto più aggressiva quanto più aumenta R, \n --> quindi minimizzo la u ma lo stato non lo considero molto (giusto? minimizzo il comando a discapito dello stato) --> sensato anche dai grafici   ');
fprintf('il caso 3 si era scritto tenesse meglio la posizione verso 0--> fa meno variazione di theta in effetti');
fprintf('\n caso 5 dovrebbe avere meno cambiamenti sullo stato --> infatti oscilla meno nella prima componente');
fprintf('\n caso 7: alpha sembra più stabile e va a 0 con più precisione');
fprintf('\n caso 9: che cazzo è successo lol? --> non mi aspetto questo dalla teoria (credo) --> probabilmente necessita della velocità se no non risponde in maniera pronta quando il pendolo tende a cadere ');
fprintf('\n caso 11: anche qua fa schifo ma penso sia per lo stesso motivo di prima --> non conviene bloccare la velocità \n ma perchè oscilla cosi tanto? \n mi aspettavo alpha_dot non cosi probabilmente essendo la derivata di alpha (in posizione non ho limiti) oscilla e ho valori alti');
fprintf('\n  caso 13 dovrebbe essere un cheap control --> bisognerebbe vedere la u di comando se satura per me');
fprintf('\n caso 14 e 15 --> fanno abbastanza cagare --> qua non capisco (con la 16 e 17 che vuole che diciamo sinceramente)--> non capisco bene neppure l andamento della 15');
fprintf('\n caso 18 : bho sembra che faccia quel che vuole... neacnhe theta va --> è stato pesato troppo poco? --> la velocita essendo libera è discontinua');

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
numero_di_casi_da_confrontare = 2;%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_i_1 = '13';
caso_i_2 = '14';
caso_i_3 = '5';
caso_i_4 = '16';
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
limiti_grafico_1 = 1; %1 per attivare
limite_x_1 = [4.5 6];
%limite_y_1 = [-80 20];
limite_y_1 = 'tight';

limiti_grafico_2 = 1; %1 per attivare
limite_x_2 = [4.5 6];
%limite_y_2 = [-80 20];
limite_y_2 = 'tight';

limiti_grafico_3 = 1; %1 per attivare
limite_x_3 = [4.5 6];
%limite_y_3 = [-80 20];
limite_y_3 = 'tight'; 

limiti_grafico_4 = 1; %1 per attivare
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
set(gcf,'Units','centimeters','Position',[1 1.5 25 18],'color','white')       
ttttttt = tiledlayout(2,2, 'TileSpacing','compact', 'Padding', 'tight');
title(ttttttt, "TITOLO",'Interpreter','latex', 'FontSize', 22)  %%eventualmente

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
