%% ultima modifica 18_05_2023
%% NOTA cambiare riga 70 ----> 40x35 da variare se schermo piccolo!!!
%% load file

%%%

% caso1 = load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso1.mat');
% caso2 = load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso2.mat');
% caso3 = load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso3.mat');
% caso4 = load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso4.mat');
% caso5 = load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso5.mat');
% caso6 = load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso6.mat');
% caso7 = load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso7.mat');
% caso8 = load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso8.mat');
% caso9 = load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso9.mat');
% caso10 = load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso10.mat');
% caso11 = load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso11.mat');
% caso12 = load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso12.mat');
% caso13 = load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso13.mat');
% caso14 = load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso14.mat');
% caso15 = load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso15.mat');
% caso16 = load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso16.mat');
% caso17 = load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso17.mat');
% caso18 = load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso18.mat');
% caso21= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso21.mat');
% caso22= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso22.mat');
% caso23= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso23.mat');
% caso24= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso24.mat');
% caso25= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso25.mat');
% caso26= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso26.mat');
% caso27= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso27.mat');
% caso28= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso28.mat');
% caso29= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso29.mat');
% caso30= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso30.mat');
% caso31= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso31.mat');
% caso32= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso32.mat');
% caso33= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso33.mat');
% caso34= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso34.mat');
% caso35= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso35.mat');
% caso36= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso36.mat');
% caso37= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso37.mat');
% caso38= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso38.mat');
% caso100= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso100.mat');
% caso101= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso101.mat');
% caso102= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso102.mat');
% caso103= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso103.mat');
% caso105= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso105.mat');
% caso106= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso106.mat');
% caso200= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso200.mat');
% caso201= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso201.mat');
% caso202= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso202.mat');
% caso203= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso203.mat');
% caso210= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso210.mat');
% caso211= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso211.mat');
% caso212= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso212.mat');
% caso300= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso300.mat');
% caso301= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso301.mat');
% caso302= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso302.mat');
% caso303= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso303.mat');
% caso1001= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso1001.mat');
% caso1002= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso1002.mat');
% caso1003= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso1003.mat');
% caso1004= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso1004.mat');
% caso1005= load('Oboe_projects-Andrea-s_Branch_GIUSTO/caso1005.mat');
%caso19 --> DIMOSTRARE PERCHE NON VA
fprintf('\n');
%% Automatizzazione per il plot

%%%%%%%%%%%%%%%%%
% Da modificare %
%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
numero_di_casi_da_confrontare = 2;%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_i_1 = '100';
caso_i_2 = '100';
caso_i_3 = '1';
caso_i_4 = '12';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%


%% COLONNE 
graph_fig_1_caso_i_1_column = '6';
graph_fig_1_caso_i_2_column = '6';


%% 
graph_fig_1_caso_i_3_column = '6';
graph_fig_1_caso_i_4_column = '6';



%%

% Da non modificare
caso      = 'caso';
plot_simulation = '.simulazione_out';
plot_signal = '.signals';
plot_values   = '.values';
plot_time   = '.time';
%%%
% Modificabile
graph_alpha_beta = 'u [V]';
graph_time  = '[s]';







%%
% Limiti asse x e y
limiti_grafico_1 = 1; %1 per attivare
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
set(gcf,'Units','centimeters','Position',[1 1.5 20 18],'color','white')       
ttttttt = tiledlayout(1,1, 'TileSpacing','compact', 'Padding', 'tight');
%title(ttttttt,'Interpreter','latex', 'FontSize', 22)  %%eventualmente
nexttile
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
% 1
%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n       = caso_i_1;%
signal_n_column = graph_fig_1_caso_i_1_column;  %
%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf(strcat('\n Fig.1 caso  ',caso_n, ' colonna  ', signal_n_column)); 
graph_theta_n = strcat('${caso\,',caso_n,'}$');

caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'));

hLine=plot(caso_n_time,caso_n_signal,...
    'LineWidth', 1.5);
hLine.Color(4) = 0.9;
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
signal_n_column =  graph_fig_1_caso_i_2_column;      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf(strcat('\n Fig.1 caso  ',caso_n, ' colonna  ', signal_n_column)); 
graph_theta_n_1 = strcat('${{\theta}_{caso\,', caso_n,'}}$');

caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'));

hLine= plot(caso_n_time,caso_n_signal,...
'LineWidth', 1.5);
hLine.Color(4) = 1;
set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22)
ylabel(graph_alpha_beta,'Interpreter',"latex",'FontSize',22) 
legend(graph_theta_n, graph_theta_n_1,'interpreter','latex','FontSize',22, 'Location','southwest')

                case 3
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_2; %
                    signal_n_column = graph_fig_1_caso_i_2_column;      %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.1 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_theta_n_1 = strcat('${caso\,',caso_n,'}$');
                    
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'));
                    
                    hLine= plot(caso_n_time,caso_n_signal,...
                    'LineWidth', 1.5);
                    hLine.Color(4) =1;
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_3;%
                    signal_n_column = graph_fig_1_caso_i_3_column;     %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.1 caso  ',caso_n, ' colonna  ', signal_n_column));  
                    graph_theta_n_2 = strcat('${caso\,',caso_n,'}$');
            
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'));
                    hLine=plot(caso_n_time,caso_n_signal,'LineWidth', 1.5);
                    hLine.Color(4) =0.8;
                    set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
                    xlabel("$t$ "+graph_time,'Interpreter',"latex",'FontSize',22)
                    ylabel(graph_alpha_beta,'Interpreter',"latex",'FontSize',22) 
                    legend(graph_theta_n, graph_theta_n_1,graph_theta_n_2,'interpreter','latex','FontSize',22, 'Location','southwest')
                case 4 
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_2;%
                    signal_n_column = graph_fig_1_caso_i_2_column;     %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.1 caso  ',caso_n, ' colonna  ', signal_n_column)); 
                    graph_theta_n_1 = strcat('${{\theta}_{caso\,', caso_n,'}}$');
                    
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'));
                    
                    hLine=plot(caso_n_time,caso_n_signal,...
                    'LineWidth', 1.5);
                    hLine.Color(4) =1;
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          =  caso_i_3;%
                    signal_n_column = graph_fig_1_caso_i_3_column;      %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.1 caso  ',caso_n, ' colonna  ', signal_n_column));  
                    graph_theta_n_2 = strcat('${{\theta}_{caso\,', caso_n,'}}$');
            
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'));
                    hLine=plot(caso_n_time,caso_n_signal,'LineWidth', 1.5);
                    hLine.Color(4) =1;
                    
                    hold on;
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    caso_n          = caso_i_4;%
                    signal_n_column = graph_fig_1_caso_i_4_column;     %
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    fprintf(strcat('\n Fig.1 caso  ',caso_n, ' colonna  ', signal_n_column));  
                    graph_theta_n_3 = strcat('${{\theta}_{caso\,', caso_n,'}}$');
            
                    caso_n_time     = eval(strcat(caso, caso_n,plot_simulation,plot_time));
                    caso_n_signal   = eval(strcat(caso, caso_n,plot_simulation,plot_signal,plot_values,'(:,' ,signal_n_column,')'));
                    hLine=plot(caso_n_time,caso_n_signal,'LineWidth', 1.5);
                    hLine.Color(4) =1;
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

title("Ingresso u per diversi valori di banda passante",'Interpreter','latex', 'FontSize', 22)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
