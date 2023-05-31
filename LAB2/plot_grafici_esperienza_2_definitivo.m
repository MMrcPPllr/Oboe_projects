clear variables
clc



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% LOAD FILES NB -->                                                  
%%%                                                                                                           
%                                                                                                                                                                               
sim_n_1                     = load('Lab_2_Data\simulazioni_prima_parte_parametri_nominali.mat');                               
sim_n_2                     = load('Lab_2_Data\simulazioni_prima_parte_variazione_parametri.mat');           
sim_n_3                     = load('Lab_2_Data\quanser_parametri_variazione_NEW_NEW.mat');                                 
sim_n_4                     = load('Lab_2_Data\quanser_parametri_nominali_NEW_NEW.mat');                                
sim_n_5                     = load('Lab_2_Data\ultimo_punto_catenaaperta.mat');                                     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                                                                     
% NB QUESTI CAMBIANO SEMPRE IN BASE AL sim_in che hai scelto...
%% Per sim_n_1 --> è solo per sim_n se metti aad es. sim_n_4 devi oltre a cambiare caso_n o caso_n_1 devi cambiare tutti i plot_simulation... --> è l'unica
plot_simulation1=('.sistema_2x2_pseudo');                               %10 dimensions
plot_simulation2=('.sistema_3x3_pseudo_compensazione');                 %12 dimensions
plot_simulation3=('.sistema_3x3_pseudo_no_compensazione');              %12 dimensions
plot_simulation4=('.sistema_3x3_pseudo_rampa_compensazione');           %12 dimensions
plot_simulation5=('.sistema_3x3_pseudo_rampa_no_compensazione');        %12 dimensions
plot_simulation6=('.sistema_3x3_stima_compensazione');                  %12 dimensions
plot_simulation7=('.sistema_3x3_stima_no_compensazione');               %12 dimensions
plot_simulation8=('.sistema_3x3_stima_rampa_compensazione');            %12 dimensions
plot_simulation9=('.sistema_3x3_stima_rampa_no_compensazione');         %12 dimensions
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Per sim_n_2
plot_simulation21=('.sistema_3x3_stima_niente_compensazione');          %12 dimensions
plot_simulation22=('.sistema_3x3_stima_niente_no_compensazione');       %12 dimensions
plot_simulation23=('.sistema_3x3_stima_niente_rampa_compensazione');    %12 dimensions
plot_simulation24=('.sistema_3x3_stima_niente_rampa_no_compensazione'); %12 dimensions
plot_simulation25=('.sistema_3x3_stima_no_bm_compensazione');           %12 dimensions
plot_simulation26=('.sistema_3x3_stima_no_bm_no_compensazione');        %12 dimensions
plot_simulation27=('.sistema_3x3_stima_no_bm_no_compensazione');        %12 dimensions
plot_simulation28=('.sistema_3x3_stima_no_bm_rampa_no_compensazione');  %12 dimensions
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Per sim_n_3
plot_simulation31=('.quanser_3x3_stima_niente_compensazione');              %11 dimensions
plot_simulation32=('.quanser_3x3_stima_niente_no_compensazione');           %12 dimensions
plot_simulation33=('.quanser_3x3_stima_niente_rampa_compensazione');        %11 dimensions
plot_simulation34=('.quanser_3x3_stima_niente_rampa_no_compensazione');     %12 dimensions
plot_simulation35=('.quanser_3x3_stima_nobm_compensazione');                %11 dimensions
plot_simulation36=('.quanser_3x3_stima_nobm_no_compensazione');             %12 dimensions
plot_simulation37=('.quanser_3x3_stima_nobm_rampa_compensazione');          %11 dimensions     
plot_simulation38=('.quanser_3x3_stima_nobm_rampa_no_compensazione');       %12 dimensions 

%% Per sim_n_4
plot_simulation41=('.quanser_3x3_stima_niente_compensazione');              %11 dimensions
plot_simulation42=('.quanser_3x3_stima_niente_no_compensazione');           %12 dimensions
plot_simulation43=('.quanser_3x3_stima_niente_rampa_compensazione');        %11 dimensions
plot_simulation44=('.quanser_3x3_stima_niente_rampa_no_compensazione');     %12 dimensions
plot_simulation45=('.quanser_3x3_stima_nobm_compensazione');                %11 dimensions
plot_simulation46=('.quanser_3x3_stima_nobm_no_compensazione');             %12 dimensions
plot_simulation47=('.quanser_3x3_stima_nobm_rampa_compensazione');          %11 dimensions     
plot_simulation48=('.quanser_3x3_stima_nobm_rampa_no_compensazione');       %12 dimensions 

%% Per sim_n_5
plot_simulation51=('.quanser_catena_aperta'); % 12 dimensions



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%DA MODIFICARE                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
casi_da_confrontare = 2;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Mettere i nomi di ciò che importi sopra  %
caso_n_1    = 'sim_n_1';                      
caso_n_2    = 'sim_n_1';  
caso_n_3    = 'sim_n_3'; 
caso_n_4    = 'sim_n_4'; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Mettere il numero di quale si vuole delle simululation sopra  
% Questi sono l'equivalente dei casi ma sono vincolati dal sim_n che hai
% scelto sopra 
plot_simulation_n_1_num   = '2';                                    
plot_simulation_n_2_num   = '3';    
plot_simulation_n_3_num   = '2'; 
plot_simulation_n_4_num   = '42'; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Colonne da cambiare      
graph_fig_1_caso_i_1_column = '1';
graph_fig_1_caso_i_2_column = '5';
graph_fig_2_caso_i_1_column = '2';
graph_fig_2_caso_i_2_column = '6';
graph_fig_3_caso_i_1_column = '11';
graph_fig_3_caso_i_2_column = '11';
graph_fig_4_caso_i_1_column = '8';
graph_fig_4_caso_i_2_column = '9';
%%%
graph_fig_1_caso_i_3_column = '1';
graph_fig_1_caso_i_4_column = '1';
graph_fig_2_caso_i_3_column = '2';
graph_fig_2_caso_i_4_column = '2';
graph_fig_3_caso_i_3_column = '3';
graph_fig_3_caso_i_4_column = '3';
graph_fig_4_caso_i_3_column = '4';
graph_fig_4_caso_i_4_column = '4';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fig_1_x_y_lim = 'si'; % metti 'si' per attivare 'no' per disattivare
xlim_fig_1 = [0 6];
ylim_fig_1 = 'padded';
fig_2_x_y_lim = 'si';  % metti 'si' per attivare 'no' per disattivare
xlim_fig_2 = [0 6];
ylim_fig_2 = 'padded';
fig_3_x_y_lim = 'si';  % metti 'si' per attivare 'no' per disattivare
xlim_fig_3 = [0 6];
ylim_fig_3 = 'padded';
fig_4_x_y_lim = 'si';  % metti 'si' per attivare 'no' per disattivare
xlim_fig_4 = [0 6];
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
graph_fig_1_unit = '[Deg]';
graph_fig_2_unit = '[Deg]';
graph_fig_3_unit = '[Deg]';
graph_fig_4_unit = '[Deg]';

%%%
% Titoli delle figure
graph_fig_1_title = 'Stima: $1$';
graph_fig_2_title = 'Stima: $2$';
graph_fig_3_title = 'Stima: $3$';
graph_fig_4_title = 'Stima: $4$';
%%%
% Figure cosa viene plottato (quali variabili
%%%
% Nomi delle variabili da plottare

graph_fig_1_caso_i_1_legend = strcat('$\theta_{simulato}$');
graph_fig_1_caso_i_2_legend = strcat('$\theta_{simulato}$');
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
set(gcf,'Units','centimeters','Position',[6 .5 30 18],'color','white')       
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
    'LineWidth', 1.5);


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
        
        plot(caso_n_time,caso_n_signal,...
            'LineWidth', 1.5);
        hold off
        set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
        xlabel(graph_fig_2_time,'Interpreter',"latex",'FontSize',22) 
        ylabel(graph_fig_2_unit,'Interpreter',"latex",'FontSize',22) 
        legend(graph_fig_2_caso_i_1_legend, graph_fig_2_caso_i_2_legend,'interpreter','latex','FontSize',22, 'Location','southwest')
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
        legend(graph_fig_3_caso_i_1_legend, graph_fig_3_caso_i_2_legend,'interpreter','latex','FontSize',22, 'Location','southwest')
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
        legend(graph_fig_4_caso_i_1_legend, graph_fig_4_caso_i_2_legend,'interpreter','latex','FontSize',22, 'Location','southwest')
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
        fprintf(strcat('\n Fig.2 caso:    ',(strcat(caso_n_3,plot_n_3 , plot_signal,plot_values,'(:,' ,signal_n_column,')'))));
        
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
