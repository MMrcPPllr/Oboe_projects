% TO DO LIST
% sistema 2x2: verificare l'effetto dei disturbi applicati sul motore (in
% forma di tensione a gradino aggiunta al comando in retroazione), sia
% sulle misure che sulle stime (comparare stato vero e stato stimato)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% LOAD FILES NB -->                                                  
%%%                                                                                                           
%                                                                                                                                                                              
%sim_n_5                      = load('Lab_2_Data_MARCO\ultimo_punto_catenaaperta.mat');             
sim_n_0                      = load('Lab_2_Data_MARCO\q_all.mat');
sim_n_1                      = load('Lab_2_Data_MARCO\simulazioni.mat');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Per sim_n_5
plot_simulation51=('.quanser_catena_aperta'); % 12 dimensions

%% Per sim_n_0
plot_simulation100 = ('.q_2x2_stima_1');
plot_simulation101 = ('.q_2x2_stima_pi_4');

plot_simulation110 = ('.q_3x3_gradino_comp');
plot_simulation111 = ('.q_3x3_gradino_no_comp');
plot_simulation112 = ('.q_3x3_rampa_comp');
plot_simulation113 = ('.q_3x3_rampa_no_comp');

plot_simulation120 = ('.q_noBM_gradino_comp');
plot_simulation121 = ('.q_noBM_gradino_no_comp');
plot_simulation122 = ('.q_noBM_rampa_comp');
plot_simulation123 = ('.q_noBM_rampa_no_comp');

plot_simulation130 = ('.q_niente_gradino_comp');
plot_simulation131 = ('.q_niente_gradino_no_comp');
plot_simulation132 = ('.q_niente_rampa_comp');
plot_simulation133 = ('.q_niente_rampa_no_comp');
%% Per sim_n_1
plot_simulation1=('.sistema_2x2_pseudo');                               %10 dimensions
plot_simulation2=('.sistema_3x3_pseudo_compensazione');                 %12 dimensions
plot_simulation3=('.sistema_3x3_pseudo_no_compensazione');              %12 dimensions
plot_simulation4=('.sistema_3x3_pseudo_rampa_compensazione');           %12 dimensions
plot_simulation5=('.sistema_3x3_pseudo_rampa_no_compensazione');        %12 dimensions
plot_simulation6=('.sistema_3x3_stima_compensazione');                  %12 dimensions
plot_simulation7=('.sistema_3x3_stima_no_compensazione');               %12 dimensions
plot_simulation8=('.sistema_3x3_stima_rampa_compensazione');            %12 dimensions
plot_simulation9=('.sistema_3x3_stima_rampa_no_compensazione');         %12 dimensions
plot_simulation21=('.sistema_3x3_stima_niente_compensazione');          %12 dimensions
plot_simulation22=('.sistema_3x3_stima_niente_no_compensazione');       %12 dimensions
plot_simulation23=('.sistema_3x3_stima_niente_rampa_compensazione');    %12 dimensions
plot_simulation24=('.sistema_3x3_stima_niente_rampa_no_compensazione'); %12 dimensions
plot_simulation25=('.sistema_3x3_stima_no_bm_compensazione');           %12 dimensions
plot_simulation26=('.sistema_3x3_stima_no_bm_no_compensazione');        %12 dimensions
plot_simulation27=('.sistema_3x3_stima_no_bm_rampa_compensazione');     %12 dimensions
plot_simulation28=('.sistema_3x3_stima_no_bm_rampa_no_compensazione');  %12 dimensions

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%DA MODIFICARE                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
casi_da_confrontare = 2;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Mettere i nomi di ciò che importi sopra  %
caso_n_1    = 'sim_n_1';                      
caso_n_2    = 'sim_n_1';  
caso_n_3    = 'sim_n_1'; 
caso_n_4    = 'sim_n_1'; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Mettere il numero di quale si vuole delle simululation sopra  
% Questi sono l'equivalente dei casi ma sono vincolati dal sim_n che hai
% scelto sopra 
plot_simulation_n_1_num   = '8';                                   
plot_simulation_n_2_num   = '8';    
plot_simulation_n_3_num   = '8'; 
plot_simulation_n_4_num   = '27'; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Colonne da cambiare     
graph_fig_1_caso_i_1_column = '5';  % x3 --> [V]        --> va convertito
graph_fig_1_caso_i_2_column = '8'; % è x3 o 0 in [V]   --> va convertito
graph_fig_1_caso_i_3_column = '12'; % è il disturbo di coppia 
graph_fig_1_caso_i_4_column = '1';
%%
graph_fig_2_caso_i_1_column = '8';
graph_fig_2_caso_i_2_column = '5';
graph_fig_2_caso_i_3_column = '12';
graph_fig_2_caso_i_4_column = '8';
%%
graph_fig_3_caso_i_1_column = '5';
graph_fig_3_caso_i_2_column = '8';
graph_fig_3_caso_i_3_column = '5';
graph_fig_3_caso_i_4_column = '8';
%%
graph_fig_4_caso_i_1_column = '8';
graph_fig_4_caso_i_2_column = '5';
graph_fig_4_caso_i_3_column = '6';
graph_fig_4_caso_i_4_column = '12';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fig_1_x_y_lim = 'si'; % metti 'si' per attivare 'no' per disattivare
xlim_fig_1 = [0 6];
ylim_fig_1 = 'padded';
fig_2_x_y_lim = 'si';  % metti 'si' per attivare 'no' per disattivare
xlim_fig_2 = [2.95 3.2];
ylim_fig_2 = 'padded';
fig_3_x_y_lim = 'si';  % metti 'si' per attivare 'no' per disattivare
xlim_fig_3 = [4.55 4.7];
ylim_fig_3 = 'padded';
fig_4_x_y_lim = 'si';  % metti 'si' per attivare 'no' per disattivare
xlim_fig_4 = [4.55 4.7];
ylim_fig_4 = [-0.001 0.001];

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
graph_fig_1_unit = '$\tau_d$ [Nm]';
graph_fig_2_unit = '$\tau_d$ [Nm]';
graph_fig_3_unit = '$\theta$ [rad]';
graph_fig_4_unit = '$err$ [rad]';

%%%
% Titoli delle figure
graph_fig_1_title = 'Disturbo vs compensazione';
graph_fig_2_title = 'Disturbo vs compensazione: zoom ';
graph_fig_3_title = 'Confronto tra riferimento e stima di posizione';
graph_fig_4_title = 'Errore di inseguimento a rampa';
%%%
% Figure cosa viene plottato (quali variabili
%%%
% Nomi delle variabili da plottare

graph_fig_1_caso_i_1_legend = strcat('$\tau_d^{stim}$');
graph_fig_1_caso_i_2_legend = strcat('$\tau_d$');
graph_fig_1_caso_i_3_legend = strcat('$\tau_d$');
graph_fig_1_caso_i_4_legend = strcat('$\theta_{simulato}$');

graph_fig_2_caso_i_1_legend = strcat('$\tau_d^{stim}$');
graph_fig_2_caso_i_2_legend = strcat('$\tau_d$');
graph_fig_2_caso_i_3_legend = strcat('$\dot{\theta}_{stima}$');
graph_fig_2_caso_i_4_legend = strcat('$\theta_{simulato}$');

graph_fig_3_caso_i_1_legend = strcat('$\theta_{stima}$');
graph_fig_3_caso_i_2_legend = strcat('$\theta_{ref}$');
graph_fig_3_caso_i_3_legend = strcat('$\theta_{stima}$');
graph_fig_3_caso_i_4_legend = strcat('$\theta_{simulato}$');

graph_fig_4_caso_i_1_legend = strcat('$\dot{\theta}_{vera}$');
graph_fig_4_caso_i_2_legend = strcat('$\dot{\theta}_{pseudo}$');
graph_fig_4_caso_i_3_legend = strcat('$\dot{\theta}_{stima}$');
graph_fig_4_caso_i_4_legend = strcat('$\theta_{simulato}$');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Inizio PLOT delle figure 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
figure(10)
set(gcf,'Units','centimeters','Position',[60 -6 40 28],'color','white')       
ttttttt = tiledlayout(2,2, 'TileSpacing','compact', 'Padding', 'tight');
%title(ttttttt, "Confronto tra stato vero, pseudo-stato e stima",'Interpreter','latex', 'FontSize', 22)

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
plot(caso_n_time,caso_n_signal*(0.042/8.4),...
    'LineWidth', 2);


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
            'LineWidth', 2);
%         %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         % Colonna simout da plottare                     %
%         signal_n_column = graph_fig_1_caso_i_3_column;   %
%         %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         caso_n_time     = eval(strcat(caso_n_3,plot_n_3, plot_time));
%         caso_n_signal   = eval(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
%         fprintf(strcat('\n Fig.1 caso:    ',(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
%         
%         plot(caso_n_time,caso_n_signal,...
%             'LineWidth', 2);
        hold off
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        xlabel(graph_fig_1_time,'Interpreter',"latex",'FontSize',22) 
        ylabel(graph_fig_1_unit,'Interpreter',"latex",'FontSize',22) 
        legend(graph_fig_1_caso_i_1_legend,graph_fig_1_caso_i_2_legend,'interpreter','latex','FontSize',22, 'Location','southeast')
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
            'LineWidth', 2);
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_1_caso_i_3_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_3,plot_n_3, plot_time));
        caso_n_signal   = eval(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.1 caso:    ',(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 2);
        hold off
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        
        xlabel(graph_fig_1_time,'Interpreter',"latex",'FontSize',22) 
        ylabel(graph_fig_1_unit,'Interpreter',"latex",'FontSize',22) 
        legend(graph_fig_1_caso_i_1_legend, graph_fig_1_caso_i_2_legend,graph_fig_1_caso_i_3_legend,'interpreter','latex','FontSize',22, 'Location','southwest')
        grid on;
        %title(graph_fig_1_title,'Interpreter','latex', 'FontSize', 22)
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
            'LineWidth', 2);
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_1_caso_i_3_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_3,plot_n_3, plot_time));
        caso_n_signal   = eval(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.1 caso:    ',(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 2);
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_1_caso_i_4_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_4,plot_n_4, plot_time));
        caso_n_signal   = eval(strcat(caso_n_4,plot_n_4 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.1 caso:    ',(strcat(caso_n_4,plot_n_4 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 2);
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
plot(caso_n_time,caso_n_signal*(0.042/8.4),...
    'LineWidth', 2);


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
        caso_n_signal  = eval(strcat(caso_n_2,plot_n_2 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.2 caso:    ',(strcat(caso_n_2,plot_n_2 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 2);
        hold off
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        xlabel(graph_fig_2_time,'Interpreter',"latex",'FontSize',22) 
        ylabel(graph_fig_2_unit,'Interpreter',"latex",'FontSize',22) 
        legend(graph_fig_2_caso_i_1_legend, graph_fig_2_caso_i_2_legend,'interpreter','latex','FontSize',22, 'Location','southeast')
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
            'LineWidth', 2);
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_2_caso_i_3_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_3,plot_n_3, plot_time));
        caso_n_signal   = eval(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.2 caso:    ',(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 2);
        hold off
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        
        xlabel(graph_fig_2_time,'Interpreter',"latex",'FontSize',22) 
        ylabel(graph_fig_2_unit,'Interpreter',"latex",'FontSize',22) 
        legend(graph_fig_2_caso_i_1_legend, graph_fig_2_caso_i_2_legend,graph_fig_2_caso_i_3_legend,'interpreter','latex','FontSize',22, 'Location','southwest')
        grid on;
        %title(graph_fig_2_title,'Interpreter','latex', 'FontSize', 22)
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
            'LineWidth', 2);
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_2_caso_i_3_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_3,plot_n_3, plot_time));
        caso_n_signal   = eval(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.2 caso:    ',(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 2);
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_2_caso_i_4_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_4,plot_n_4, plot_time));
        caso_n_signal   = eval(strcat(caso_n_4,plot_n_4 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.2 caso:    ',(strcat(caso_n_4,plot_n_4 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 2);
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
    'LineWidth', 2);


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
            'LineWidth', 2);
        hold off
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        xlabel(graph_fig_3_time,'Interpreter',"latex",'FontSize',22) 
        ylabel(graph_fig_3_unit,'Interpreter',"latex",'FontSize',22) 
        legend(graph_fig_3_caso_i_1_legend, graph_fig_3_caso_i_2_legend,'interpreter','latex','FontSize',22, 'Location','southeast')
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
            'LineWidth', 2);
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_3_caso_i_3_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_3,plot_n_3, plot_time));
        caso_n_signal   = eval(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.3 caso:    ',(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 2);
        hold off
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        
        xlabel(graph_fig_3_time,'Interpreter',"latex",'FontSize',22) 
        ylabel(graph_fig_3_unit,'Interpreter',"latex",'FontSize',22) 
        legend(graph_fig_3_caso_i_1_legend, graph_fig_3_caso_i_2_legend,graph_fig_3_caso_i_3_legend,'interpreter','latex','FontSize',22, 'Location','southwest')
        grid on;
        %title(graph_fig_3_title,'Interpreter','latex', 'FontSize', 22)
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
            'LineWidth', 2);
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_3_caso_i_3_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_3,plot_n_3, plot_time));
        caso_n_signal   = eval(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.3 caso:    ',(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 2);
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Colonna simout da plottare                     %
        signal_n_column = graph_fig_3_caso_i_4_column;   %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        caso_n_time     = eval(strcat(caso_n_4,plot_n_4, plot_time));
        caso_n_signal   = eval(strcat(caso_n_4,plot_n_4 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
        fprintf(strcat('\n Fig.3 caso:    ',(strcat(caso_n_4,plot_n_4 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 2);
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
caso_n_time1     = eval(strcat(caso_n_1, plot_n_1 , plot_time));
caso_n_signal1   = eval(strcat(caso_n_1, plot_n_1 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
hold on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Colonna simout da plottare                     %
signal_n_column = graph_fig_4_caso_i_2_column;   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
caso_n_time2     = eval(strcat(caso_n_2,plot_n_2, plot_time));
caso_n_signal2   = eval(strcat(caso_n_2,plot_n_2 , plot_signal,plot_values,'(:,' ,signal_n_column,')'));
fprintf(strcat('\n Fig.4 caso:    ',(strcat(caso_n_2,plot_n_2 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
diff= caso_n_signal1-caso_n_signal2;
plot(caso_n_time1, diff,'LineWidth', 2);
hold off
grid on;

set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
xlabel(graph_fig_4_time,'Interpreter',"latex",'FontSize',22) 
ylabel(graph_fig_4_unit,'Interpreter',"latex",'FontSize',22) 
%legend(graph_fig_4_caso_i_1_legend, graph_fig_4_caso_i_2_legend,'interpreter','latex','FontSize',22, 'Location','southwest')
title(graph_fig_4_title,'Interpreter','latex', 'FontSize', 22)
  
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
