

fig_1_x_y_lim = 'si'; % metti 'si' per attivare 'no' per disattivare
xlim_fig_1 = [40 100];
ylim_fig_1 = [1e-6 5e-6]
fig_2_x_y_lim = 'si';  % metti 'si' per attivare 'no' per disattivare
xlim_fig_2 = [40 100];
ylim_fig_2 = 'padded';
fig_3_x_y_lim = 'si';  % metti 'si' per attivare 'no' per disattivare
xlim_fig_3 = [40 100];
ylim_fig_3 = [0.005 0.015]
fig_4_x_y_lim = 'si';  % metti 'si' per attivare 'no' per disattivare
xlim_fig_4 = [40 100];
ylim_fig_4 = 'padded';


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Unità di misura asse x
graph_fig_1_time  = 't [s]';
graph_fig_2_time  = 't [s]';
graph_fig_3_time  = 't [s]';
graph_fig_4_time  = 't [s]';
%%%
% Unità di misura asse y
graph_fig_1_unit = 'B [Nm s/rad]';
graph_fig_2_unit = '$\omega$ [Rad/s]';
graph_fig_3_unit = '$i_a$ [A]';
graph_fig_4_unit = '[Rad/$s^2$]';

%%%
% Titoli delle figure
graph_fig_1_title = "Riferimento di tensione";
graph_fig_2_title = "Velocit\'a $\omega$ misurata";
graph_fig_3_title = "Corrente $i_a$ misurata";
graph_fig_4_title = 'Riferimento di accelerazione';
%%%
% Figure cosa viene plottato (quali variabili
%%%
% Nomi delle variabili da plottare

graph_fig_1_caso_i_1_legend = strcat('riferimento');
graph_fig_1_caso_i_2_legend = strcat('posizione');
graph_fig_1_caso_i_3_legend = strcat('$\theta_{simulato}$');
graph_fig_1_caso_i_4_legend = strcat('$\theta_{simulato}$');

graph_fig_2_caso_i_1_legend = strcat('$\theta_{simulato}$');
graph_fig_2_caso_i_2_legend = strcat('$\theta_{simulato}$');
graph_fig_2_caso_i_3_legend = strcat('$\theta_{simulato}$');
graph_fig_2_caso_i_4_legend = strcat('$\theta_{simulato}$');

graph_fig_3_caso_i_1_legend = strcat('Stima');
graph_fig_3_caso_i_2_legend = strcat("Pseudo-misura");
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
set(gcf,'Units','centimeters','Position',[6 .5 20 20],'color','white')       
ttttttt = tiledlayout(1,1, 'TileSpacing','compact', 'Padding', 'tight');



nexttile


plot(simout.time,stima,...
    'linewidth', 2.5);


    set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
    xlabel(graph_fig_1_time,'Interpreter',"latex",'FontSize',22) 
    ylabel(graph_fig_1_unit,'Interpreter',"latex",'FontSize',22) 
    %legend(graph_fig_1_caso_i_1_legend,'interpreter','latex','FontSize',22, 'Location','southwest')
    grid on;
    title(graph_fig_1_title,'Interpreter','latex', 'FontSize', 22)


switch fig_1_x_y_lim
    case 'no'
    case 'si'
        xlim(xlim_fig_1);
        ylim(ylim_fig_1);
    otherwise 
        error('Gatu sbaglià la condizione per xlim e ylim');
end
xticklabels({'10','20','30','40','50','60','70'})
yline(2e-6,'--','LineWidth',3, Color='r');



% nexttile
% 
% 
% plot(simout.time,simout.signals.values(:,1),...
%     'linewidth', 2.5);
% 
% 
%     set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
%     xlabel(graph_fig_2_time,'Interpreter',"latex",'FontSize',22) 
%     ylabel(graph_fig_2_unit,'Interpreter',"latex",'FontSize',22) 
%     %legend(graph_fig_1_caso_i_1_legend,'interpreter','latex','FontSize',22, 'Location','southwest')
%     grid on;
%     title(graph_fig_2_title,'Interpreter','latex', 'FontSize', 22)
% 
% 
% switch fig_2_x_y_lim
%     case 'no'
%     case 'si'
%         xlim(xlim_fig_2);
%         ylim(ylim_fig_2);
%     otherwise 
%         error('Gatu sbaglià la condizione per xlim e ylim');
% end
% xticklabels({'10','30','50','70'})
% nexttile
% 
% 
% plot(simout.time,corrente_kt./0.042,...
%     'linewidth', 2.5);
% 
% 
%     set(gca,'TickLabelInterpreter',"latex",'FontSize',22)
%     xlabel(graph_fig_3_time,'Interpreter',"latex",'FontSize',22) 
%     ylabel(graph_fig_3_unit,'Interpreter',"latex",'FontSize',22) 
%     %legend(graph_fig_3_caso_i_3_legend,'interpreter','latex','FontSize',22, 'Location','southwest')
%     grid on;
%     title(graph_fig_3_title,'Interpreter','latex', 'FontSize', 22)
% 
% 
% switch fig_3_x_y_lim
%     case 'no'
%     case 'si'
%         xlim(xlim_fig_3);
%         ylim(ylim_fig_3);
%     otherwise 
%         error('Gatu sbaglià la condizione per xlim e ylim');
% end
% xticklabels({'10','30','50','70'})