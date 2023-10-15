clear variables
clc



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% LOAD FILES NB -->                                                  
%%%                                                                                                           
%                                                                                                                                                                               
sim_n_1                      = load('Lab3_NEW\lqr_DOB.mat');
sim_n_2                      = load('Lab3_NEW\ptc.mat');
sim_n_3                      = load('Lab3_NEW\zpetc.mat');
%sim_n_1000                  = load('Lab_2_Data_MARCO\test_autovalori.mat');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                                                                     
% NB QUESTI CAMBIANO SEMPRE IN BASE AL sim_in che hai scelto...

plot_simulation100=('.lqr_2_5');                              
plot_simulation101=('.lqr_5');                 
plot_simulation102=('.lqr_8');   
plot_simulation110=('.DOB_2_5');   
plot_simulation111=('.DOB_5');   
plot_simulation112=('.DOB_8_satura');   


plot_simulation200=('.ptc_2_5'); 
plot_simulation201=('.ptc_5'); 
plot_simulation202=('.ptc_8'); 
plot_simulation203=('.ptc_5_ideal'); 
plot_simulation210=('.ptc_DOB_2_5');
plot_simulation211=('.ptc_DOB_5'); 
plot_simulation212=('.ptc_DOB_8');
plot_simulation213=('.ptc_DOB_5_ideal'); 


plot_simulation300=('.zpetc_2_5'); 
plot_simulation301=('.zpetc_5'); 
plot_simulation302=('.zpetc_8'); 
plot_simulation310=('.zpetc_dob_2_5');
plot_simulation311=('.zpetc_dob_5'); 
plot_simulation312=('.zpetc_dob_8');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%DA MODIFICARE                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
casi_da_confrontare = 2;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Mettere i nomi di ciò che importi sopra  %
caso_n_1    = 'sim_n_3';                      
caso_n_2    = 'sim_n_3';  
caso_n_3    = 'sim_n_1'; 
caso_n_4    = 'sim_n_1'; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Mettere il numero di quale si vuole delle simululation sopra  
% Questi sono l'equivalente dei casi ma sono vincolati dal sim_n che hai
% scelto sopra
plot_simulation_n_1_num   = '310';                                    
plot_simulation_n_2_num   = '310';    
plot_simulation_n_3_num   = '100'; 
plot_simulation_n_4_num   = '100'; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Colonne da cambiare      
graph_fig_1_caso_i_1_column = '7';
graph_fig_1_caso_i_2_column = '1';
graph_fig_1_caso_i_3_column = '7';
graph_fig_1_caso_i_4_column = '3';
%%%%
graph_fig_2_caso_i_1_column = '11';
graph_fig_2_caso_i_2_column = '11';
graph_fig_2_caso_i_3_column = '6';
graph_fig_2_caso_i_4_column = '6';
%%%%
graph_fig_3_caso_i_1_column = '4';
graph_fig_3_caso_i_2_column = '4';
graph_fig_3_caso_i_3_column = '5';
graph_fig_3_caso_i_4_column = '8';
%%%%
graph_fig_4_caso_i_1_column = '8';
graph_fig_4_caso_i_2_column = '8';
graph_fig_4_caso_i_3_column = '6';
graph_fig_4_caso_i_4_column = '7';


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fig_1_x_y_lim = 'si'; % metti 'si' per attivare 'no' per disattivare
xlim_fig_1 = [2.203 2.205];
ylim_fig_1 = 'padded';
fig_2_x_y_lim = 'si';  % metti 'si' per attivare 'no' per disattivare
xlim_fig_2 = [2 3];
ylim_fig_2 = 'padded';
fig_3_x_y_lim = 'si';  % metti 'si' per attivare 'no' per disattivare
xlim_fig_3 = [2 3];
ylim_fig_3 = 'padded';
fig_4_x_y_lim = 'si';  % metti 'si' per attivare 'no' per disattivare
xlim_fig_4 = [2 3];
ylim_fig_4 = 'padded';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
plot_n_1   =  eval(strcat('plot_simulation',plot_simulation_n_1_num));
plot_n_2   =  eval(strcat('plot_simulation',plot_simulation_n_2_num));
plot_n_3   =  eval(strcat('plot_simulation',plot_simulation_n_3_num));
plot_n_4   =  eval(strcat('plot_simulation',plot_simulation_n_4_num));

plot_signal     = '.signals';
plot_values     = '.values';
plot_time       = '.time';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Da modificare 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Unità di misura asse x
graph_fig_1_time  = 't [s]';
graph_fig_2_time  = 't [s]';
graph_fig_3_time  = 't [s]';
graph_fig_4_time  = 't [s]';
%%%
% Unità di misura asse y
graph_fig_1_unit = '[Rad]';
graph_fig_2_unit = '[Rad]';
graph_fig_3_unit = '[V]';
graph_fig_4_unit = '[V]';

%%%
% Titoli delle figure
graph_fig_1_title = "Confronto segnale di riferimento con l'uscita";
graph_fig_2_title = 'Errore di inseguimento';
graph_fig_3_title = 'Stima del disturbo';
graph_fig_4_title = 'Comando al motore';
%%%
% Figure cosa viene plottato (quali variabili
%%%
% Nomi delle variabili da plottare

graph_fig_1_caso_i_1_legend = strcat('riferimento');
graph_fig_1_caso_i_2_legend = strcat('uscita');
graph_fig_1_caso_i_3_legend = strcat('$\theta_{simulato}$');
graph_fig_1_caso_i_4_legend = strcat('$\theta_{simulato}$');

graph_fig_2_caso_i_1_legend = strcat('$\theta_{simulato}$');
graph_fig_2_caso_i_2_legend = strcat('$\theta_{simulato}$');
graph_fig_2_caso_i_3_legend = strcat('$\theta_{simulato}$');
graph_fig_2_caso_i_4_legend = strcat('$\theta_{simulato}$');

graph_fig_3_caso_i_1_legend = strcat('$\theta_{simulato}$');
graph_fig_3_caso_i_2_legend = strcat('$\theta_{simulato}$');
graph_fig_3_caso_i_3_legend = strcat('$\theta_{simulato}$');
graph_fig_3_caso_i_4_legend = strcat('$\theta_{simulato}$');

graph_fig_4_caso_i_1_legend = strcat('$\theta_{simulato}$');
graph_fig_4_caso_i_2_legend = strcat('$\theta_{simulato}$');
graph_fig_4_caso_i_3_legend = strcat('$\theta_{simulato}$');
graph_fig_4_caso_i_4_legend = strcat('$\theta_{simulato}$');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Inizio PLOT delle figure 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
figure(10)
set(gcf,'Units','centimeters','Position',[6 .5 40 28],'color','white')       
ttttttt = tiledlayout(2,2, 'TileSpacing','compact', 'Padding', 'tight');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1
nexttile
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Colonna simout da plottare                     %
signal_n_column = graph_fig_1_caso_i_1_column;   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n_time     = eval(strcat(caso_n_1, plot_n_1 , plot_time));
caso_n_signal   = eval(strcat(caso_n_1, plot_n_1 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
fprintf(strcat('\n Fig.1 caso:    ',strcat(caso_n_1, plot_n_1 , plot_signal,plot_values,'(:,' ,signal_n_column,')')));  
plot(caso_n_time,caso_n_signal,...
    'LineWidth', 1.5);


switch casi_da_confrontare 
    case 1
        hold off
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        xlabel(graph_fig_1_time,'Interpreter',"latex",'FontSize',22) 
        ylabel(graph_fig_1_unit,'Interpreter',"latex",'FontSize',22) 
        legend(graph_fig_1_caso_i_1_legend,'interpreter','latex','FontSize',22, 'Location','southwest')
        grid on;
        title(graph_fig_1_title,'Interpreter','latex', 'FontSize', 22)
    case 2
        hold on;
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_1_caso_i_2_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_2,plot_n_2, plot_time));
        caso_n_signal   = eval(strcat(caso_n_2,plot_n_2 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.1 caso:    ',(strcat(caso_n_2,plot_n_2 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 1.5);
        hold off
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        xlabel(graph_fig_1_time,'Interpreter',"latex",'FontSize',22) 
        ylabel(graph_fig_1_unit,'Interpreter',"latex",'FontSize',22) 
        legend(graph_fig_1_caso_i_1_legend, graph_fig_1_caso_i_2_legend,'interpreter','latex','FontSize',22, 'Location','southwest')
        grid on;
        title(graph_fig_1_title,'Interpreter','latex', 'FontSize', 22)
    case 3
        hold on;
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_1_caso_i_2_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_2,plot_n_2, plot_time));
        caso_n_signal   = eval(strcat(caso_n_2,plot_n_2 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.1 caso:    ',(strcat(caso_n_2,plot_n_2 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 1.5);
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_1_caso_i_3_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_3,plot_n_3, plot_time));
        caso_n_signal   = eval(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.1 caso:    ',(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 1.5);
        hold off
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        
        xlabel(graph_fig_1_time,'Interpreter',"latex",'FontSize',22) 
        ylabel(graph_fig_1_unit,'Interpreter',"latex",'FontSize',22) 
        legend(graph_fig_1_caso_i_1_legend, graph_fig_1_caso_i_2_legend,graph_fig_1_caso_i_3_legend,'interpreter','latex','FontSize',22, 'Location','southwest')
        grid on;
        title(graph_fig_1_title,'Interpreter','latex', 'FontSize', 22)
    case 4
        hold on;
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_1_caso_i_2_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_2,plot_n_2, plot_time));
        caso_n_signal   = eval(strcat(caso_n_2,plot_n_2 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.1 caso:    ',(strcat(caso_n_2,plot_n_2 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 1.5);
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_1_caso_i_3_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_3,plot_n_3, plot_time));
        caso_n_signal   = eval(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.1 caso:    ',(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 1.5);
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_1_caso_i_4_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_4,plot_n_4, plot_time));
        caso_n_signal   = eval(strcat(caso_n_4,plot_n_4 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.1 caso:    ',(strcat(caso_n_4,plot_n_4 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 1.5);
        hold off
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        xlabel(graph_fig_1_time,'Interpreter',"latex",'FontSize',22) 
        ylabel(graph_fig_1_unit,'Interpreter',"latex",'FontSize',22) 
        legend(graph_fig_1_caso_i_1_legend, graph_fig_1_caso_i_2_legend,graph_fig_1_caso_i_3_legend,graph_fig_1_caso_i_4_legend,'interpreter','latex','FontSize',22, 'Location','southwest')
        grid on;
        title(graph_fig_1_title,'Interpreter','latex', 'FontSize', 22)
    otherwise
       error('Hai sbagliato pirla');
end 


switch fig_1_x_y_lim
    case 'no'
    case 'si'
        xlim(xlim_fig_1);
        ylim(ylim_fig_1);
    otherwise 
        error('Gatu sbaglià la condizione per xlim e ylim');
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2
nexttile
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Colonna simout da plottare                     %
signal_n_column = graph_fig_2_caso_i_1_column;   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n_time     = eval(strcat(caso_n_1, plot_n_1 , plot_time));
caso_n_signal   = eval(strcat(caso_n_1, plot_n_1 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
fprintf(strcat('\n Fig.2 caso:    ',strcat(caso_n_1, plot_n_1 , plot_signal,plot_values,'(:,' ,signal_n_column,')')));  
plot(caso_n_time,caso_n_signal,...
    'LineWidth', 1.5, 'Color',"#77AC30");


switch casi_da_confrontare 
    case 1
        hold off
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        xlabel(graph_fig_2_time,'Interpreter',"latex",'FontSize',22) 
        ylabel(graph_fig_2_unit,'Interpreter',"latex",'FontSize',22) 
        legend(graph_fig_2_caso_i_1_legend,'interpreter','latex','FontSize',22, 'Location','southwest')
        grid on;
        title(graph_fig_2_title,'Interpreter','latex', 'FontSize', 22)
    case 2
        hold on;
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_2_caso_i_2_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_2,plot_n_2, plot_time));
        caso_n_signal   = eval(strcat(caso_n_2,plot_n_2 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.2 caso:    ',(strcat(caso_n_2,plot_n_2 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        %plot(caso_n_time,caso_n_signal,...
        %    'LineWidth', 1.5, 'Color',"#77AC30");
        hold off
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        xlabel(graph_fig_2_time,'Interpreter',"latex",'FontSize',22) 
        ylabel(graph_fig_2_unit,'Interpreter',"latex",'FontSize',22) 
        %legend(graph_fig_2_caso_i_1_legend, graph_fig_2_caso_i_2_legend,'interpreter','latex','FontSize',22, 'Location','southwest')
        grid on;
        title(graph_fig_2_title,'Interpreter','latex', 'FontSize', 22)
    case 3
        hold on;
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_2_caso_i_2_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_2,plot_n_2, plot_time));
        caso_n_signal   = eval(strcat(caso_n_2,plot_n_2 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.2 caso:    ',(strcat(caso_n_2,plot_n_2 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 1.5);
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_2_caso_i_3_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_3,plot_n_3, plot_time));
        caso_n_signal   = eval(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.2 caso:    ',(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 1.5);
        hold off
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        
        xlabel(graph_fig_2_time,'Interpreter',"latex",'FontSize',22) 
        ylabel(graph_fig_2_unit,'Interpreter',"latex",'FontSize',22) 
        legend(graph_fig_2_caso_i_1_legend, graph_fig_2_caso_i_2_legend,graph_fig_2_caso_i_3_legend,'interpreter','latex','FontSize',22, 'Location','southwest')
        grid on;
        title(graph_fig_2_title,'Interpreter','latex', 'FontSize', 22)
    case 4
        hold on;
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_2_caso_i_2_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_2,plot_n_2, plot_time));
        caso_n_signal   = eval(strcat(caso_n_2,plot_n_2 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.2 caso:    ',(strcat(caso_n_2,plot_n_2 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 1.5);
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_2_caso_i_3_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_3,plot_n_3, plot_time));
        caso_n_signal   = eval(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.2 caso:    ',(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 1.5);
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_2_caso_i_4_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_4,plot_n_4, plot_time));
        caso_n_signal   = eval(strcat(caso_n_4,plot_n_4 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.2 caso:    ',(strcat(caso_n_4,plot_n_4 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 1.5);
        hold off
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        xlabel(graph_fig_2_time,'Interpreter',"latex",'FontSize',22) 
        ylabel(graph_fig_2_unit,'Interpreter',"latex",'FontSize',22) 
        legend(graph_fig_2_caso_i_1_legend, graph_fig_2_caso_i_2_legend,graph_fig_2_caso_i_3_legend,graph_fig_2_caso_i_4_legend,'interpreter','latex','FontSize',22, 'Location','southwest')
        grid on;
        title(graph_fig_2_title,'Interpreter','latex', 'FontSize', 22)
    otherwise
       error('Hai sbagliato pirla');
end 
switch fig_2_x_y_lim
    case 'no'
    case 'si'
        xlim(xlim_fig_2);
        ylim(ylim_fig_2);
    otherwise 
        error('Gatu sbaglià la condizione per xlim e ylim');
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3
nexttile
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Colonna simout da plottare                     %
signal_n_column = graph_fig_3_caso_i_1_column;   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n_time     = eval(strcat(caso_n_1, plot_n_1 , plot_time));
caso_n_signal   = eval(strcat(caso_n_1, plot_n_1 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
fprintf(strcat('\n Fig.3 caso:    ',strcat(caso_n_1, plot_n_1 , plot_signal,plot_values,'(:,' ,signal_n_column,')')));  
plot(caso_n_time,caso_n_signal,...
    'LineWidth', 1.5);


switch casi_da_confrontare 
    case 1
        hold off
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        xlabel(graph_fig_3_time,'Interpreter',"latex",'FontSize',22) 
        ylabel(graph_fig_3_unit,'Interpreter',"latex",'FontSize',22) 
        legend(graph_fig_3_caso_i_1_legend,'interpreter','latex','FontSize',22, 'Location','southwest')
        grid on;
        title(graph_fig_3_title,'Interpreter','latex', 'FontSize', 22)
    case 2
        hold on;
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_3_caso_i_2_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_2,plot_n_2, plot_time));
        caso_n_signal   = eval(strcat(caso_n_2,plot_n_2 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.3 caso:    ',(strcat(caso_n_2,plot_n_2 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 1.5);
        hold off
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        xlabel(graph_fig_3_time,'Interpreter',"latex",'FontSize',22) 
        ylabel(graph_fig_3_unit,'Interpreter',"latex",'FontSize',22) 
        %legend(graph_fig_3_caso_i_1_legend, graph_fig_3_caso_i_2_legend,'interpreter','latex','FontSize',22, 'Location','southwest')
        grid on;
        title(graph_fig_3_title,'Interpreter','latex', 'FontSize', 22)
    case 3
        hold on;
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_3_caso_i_2_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_2,plot_n_2, plot_time));
        caso_n_signal   = eval(strcat(caso_n_2,plot_n_2 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.3 caso:    ',(strcat(caso_n_2,plot_n_2 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 1.5);
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_3_caso_i_3_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_3,plot_n_3, plot_time));
        caso_n_signal   = eval(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.3 caso:    ',(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 1.5);
        hold off
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        
        xlabel(graph_fig_3_time,'Interpreter',"latex",'FontSize',22) 
        ylabel(graph_fig_3_unit,'Interpreter',"latex",'FontSize',22) 
        legend(graph_fig_3_caso_i_1_legend, graph_fig_3_caso_i_2_legend,graph_fig_3_caso_i_3_legend,'interpreter','latex','FontSize',22, 'Location','southwest')
        grid on;
        title(graph_fig_3_title,'Interpreter','latex', 'FontSize', 22)
    case 4
        hold on;
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_3_caso_i_2_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_2,plot_n_2, plot_time));
        caso_n_signal   = eval(strcat(caso_n_2,plot_n_2 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.3 caso:    ',(strcat(caso_n_2,plot_n_2 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 1.5);
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_3_caso_i_3_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_3,plot_n_3, plot_time));
        caso_n_signal   = eval(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.3 caso:    ',(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 1.5);
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_3_caso_i_4_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_4,plot_n_4, plot_time));
        caso_n_signal   = eval(strcat(caso_n_4,plot_n_4 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.3 caso:    ',(strcat(caso_n_4,plot_n_4 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 1.5);
        hold off
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        xlabel(graph_fig_3_time,'Interpreter',"latex",'FontSize',22) 
        ylabel(graph_fig_3_unit,'Interpreter',"latex",'FontSize',22) 
        legend(graph_fig_3_caso_i_1_legend, graph_fig_3_caso_i_2_legend,graph_fig_3_caso_i_3_legend,graph_fig_3_caso_i_4_legend,'interpreter','latex','FontSize',22, 'Location','southwest')
        grid on;
        title(graph_fig_3_title,'Interpreter','latex', 'FontSize', 22)
    otherwise
       error('Hai sbagliato pirla');
end 
switch fig_3_x_y_lim
    case 'no'
    case 'si'
        xlim(xlim_fig_3);
        ylim(ylim_fig_3);
    otherwise 
        error('Gatu sbaglià la condizione per xlim e ylim');
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4
nexttile
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Colonna simout da plottare                     %
signal_n_column = graph_fig_4_caso_i_1_column;   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n_time     = eval(strcat(caso_n_1, plot_n_1 , plot_time));
caso_n_signal   = eval(strcat(caso_n_1, plot_n_1 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
fprintf(strcat('\n Fig.4 caso:    ',strcat(caso_n_1, plot_n_1 , plot_signal,plot_values,'(:,' ,signal_n_column,')')));  
plot(caso_n_time,caso_n_signal,...
    'LineWidth', 1.5);


switch casi_da_confrontare 
    case 1
        hold off
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        xlabel(graph_fig_4_time,'Interpreter',"latex",'FontSize',22) 
        ylabel(graph_fig_4_unit,'Interpreter',"latex",'FontSize',22) 
        legend(graph_fig_4_caso_i_1_legend,'interpreter','latex','FontSize',22, 'Location','southwest')
        grid on;
        title(graph_fig_4_title,'Interpreter','latex', 'FontSize', 22)
    case 2
        hold on;
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_4_caso_i_2_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_2,plot_n_2, plot_time));
        caso_n_signal   = eval(strcat(caso_n_2,plot_n_2 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.4 caso:    ',(strcat(caso_n_2,plot_n_2 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 1.5);
        hold off
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        xlabel(graph_fig_4_time,'Interpreter',"latex",'FontSize',22) 
        ylabel(graph_fig_4_unit,'Interpreter',"latex",'FontSize',22) 
        %legend(graph_fig_4_caso_i_1_legend, graph_fig_4_caso_i_2_legend,'interpreter','latex','FontSize',22, 'Location','southwest')
        grid on;
        title(graph_fig_4_title,'Interpreter','latex', 'FontSize', 22)
    case 3
        hold on;
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_4_caso_i_2_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_2,plot_n_2, plot_time));
        caso_n_signal   = eval(strcat(caso_n_2,plot_n_2 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.4 caso:    ',(strcat(caso_n_2,plot_n_2 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 1.5);
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_4_caso_i_3_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_3,plot_n_3, plot_time));
        caso_n_signal   = eval(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.4 caso:    ',(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 1.5);
        hold off
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        
        xlabel(graph_fig_4_time,'Interpreter',"latex",'FontSize',22) 
        ylabel(graph_fig_4_unit,'Interpreter',"latex",'FontSize',22) 
        legend(graph_fig_4_caso_i_1_legend, graph_fig_4_caso_i_2_legend,graph_fig_4_caso_i_3_legend,'interpreter','latex','FontSize',22, 'Location','southwest')
        grid on;
        title(graph_fig_4_title,'Interpreter','latex', 'FontSize', 22)
    case 4
        hold on;
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_4_caso_i_2_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_2,plot_n_2, plot_time));
        caso_n_signal   = eval(strcat(caso_n_2,plot_n_2 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.4 caso:    ',(strcat(caso_n_2,plot_n_2 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 1.5);
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_4_caso_i_3_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_3,plot_n_3, plot_time));
        caso_n_signal   = eval(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.4 caso:    ',(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 1.5);
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_4_caso_i_4_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_4,plot_n_4, plot_time));
        caso_n_signal   = eval(strcat(caso_n_4,plot_n_4 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.4 caso:    ',(strcat(caso_n_4,plot_n_4 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        fprintf('\n');
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 1.5);
        hold off
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        xlabel(graph_fig_4_time,'Interpreter',"latex",'FontSize',22) 
        ylabel(graph_fig_4_unit,'Interpreter',"latex",'FontSize',22) 
        legend(graph_fig_4_caso_i_1_legend, graph_fig_4_caso_i_2_legend,graph_fig_4_caso_i_3_legend,graph_fig_4_caso_i_4_legend,'interpreter','latex','FontSize',22, 'Location','southwest')
        grid on;
        title(graph_fig_4_title,'Interpreter','latex', 'FontSize', 22)
    otherwise
       error('Hai sbagliato pirla');
end 
switch fig_4_x_y_lim
    case 'no'
    case 'si'
        xlim(xlim_fig_4);
        ylim(ylim_fig_4);
    otherwise 
        error('Gatu sbaglià la condizione per xlim e ylim');
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('\n'),
