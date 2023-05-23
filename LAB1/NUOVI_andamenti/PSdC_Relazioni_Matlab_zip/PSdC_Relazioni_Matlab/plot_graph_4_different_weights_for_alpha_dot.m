%% load file
% caso1 = load('Oboe_projects-Andrea-s_Branch/caso1.mat');
% caso2 = load('Oboe_projects-Andrea-s_Branch/caso2.mat');
% caso3 = load('Oboe_projects-Andrea-s_Branch/caso3.mat');
% caso4 = load('Oboe_projects-Andrea-s_Branch/caso4.mat');
% caso5 = load('Oboe_projects-Andrea-s_Branch/caso5.mat');
% caso6 = load('Oboe_projects-Andrea-s_Branch/caso6.mat');
% caso7 = load('Oboe_projects-Andrea-s_Branch/caso7.mat');
caso8 = load('Oboe_projects-Andrea-s_Branch/caso8.mat');
caso9 = load('Oboe_projects-Andrea-s_Branch/caso9.mat');
% caso10 = load('Oboe_projects-Andrea-s_Branch/caso10.mat');
% caso11 = load('Oboe_projects-Andrea-s_Branch/caso11.mat');
% caso12 = load('Oboe_projects-Andrea-s_Branch/caso12.mat');
% caso13 = load('Oboe_projects-Andrea-s_Branch/caso13.mat');
% caso14 = load('Oboe_projects-Andrea-s_Branch/caso14.mat');
% caso15 = load('Oboe_projects-Andrea-s_Branch/caso15.mat');
% caso16 = load('Oboe_projects-Andrea-s_Branch/caso16.mat');
% caso17 = load('Oboe_projects-Andrea-s_Branch/caso17.mat');
% caso18 = load('Oboe_projects-Andrea-s_Branch/caso18.mat');
fprintf('COMMENTI detti durante il laboratorio: \n')
disp('caso 8: vibra e non tiene la posizione + ROBUSTO');
disp('caso 9: non tiene NIENTE -->  motore vibra --> non sta su + NON ROBUSTO (forse fare come aveva detto OBOE di fare +- 30 gradi????) ');


%% Plot figure
%% caso 4) posizione theta
figure(1)
set(gcf,'Position',[100 100 600 600])
% fontsize(gcf,scale=1.3)
grid on
hLine1=plot(caso8.simulazione_out.time,caso8.simulazione_out.signals.values(:,1),...
    'LineStyle','-',...
    'LineWidth',1.5,...
    'Color', 'r');
hold on 
hLine=plot(caso9.simulazione_out.time,caso9.simulazione_out.signals.values(:,1),...
    'LineStyle','-',...
    'LineWidth',1.5,...
    'Color', 'b');

hLine.Color(4)=1;
hLine1.Color(4)=1;

hold off
xlabel("$t$ [s]",'Interpreter',"latex",'FontSize',20) 
ylabel("$\theta$ [rad]",'Interpreter',"latex",'FontSize',20) 
legend('${{\theta}_{caso\, 8}}$','${{\theta}_{caso\, 9}}$','interpreter','latex','FontSize',22, 'Location','southwest')
fontsize(gca,scale=1.3)
xlim([0 15])
axis tight


%% caso 4) posizione alpha
figure(2)
set(gcf,'Position',[100 100 600 600])
% fontsize(gcf,scale=1.3)
grid on
hLine1=plot(caso8.simulazione_out.time,caso8.simulazione_out.signals.values(:,2),...
    'LineStyle','-',...
    'LineWidth',1.5,...
    'Color', 'r');
hold on 
hLine=plot(caso9.simulazione_out.time,caso9.simulazione_out.signals.values(:,2),...
    'LineStyle','-',...
    'LineWidth',1.5,...
    'Color', 'b');

hLine.Color(4)=1;
hLine1.Color(4)=1;

hold off
xlabel("$t$ [s]",'Interpreter',"latex",'FontSize',20) 
ylabel("$\alpha$ [rad]",'Interpreter',"latex",'FontSize',20) 
legend('${{\alpha}_{caso\, 8}}$','${{\alpha}_{caso\, 9}}$','interpreter','latex','FontSize',22, 'Location','southwest')
fontsize(gca,scale=1.3)
xlim([0 15])
axis tight

%% caso 4) velocità theta
figure(3)
set(gcf,'Position',[100 100 600 600])
% fontsize(gcf,scale=1.3)
grid on
hLine1=plot(caso8.simulazione_out.time,caso8.simulazione_out.signals.values(:,3),...
    'LineStyle','-',...
    'LineWidth',1.5,...
    'Color', 'r');
hold on 
hLine=plot(caso9.simulazione_out.time,caso9.simulazione_out.signals.values(:,3),...
    'LineStyle','-',...
    'LineWidth',1.5,...
    'Color', 'b');

hLine.Color(4)=1;
hLine1.Color(4)=1;

hold off
xlabel("$t$ [s]",'Interpreter',"latex",'FontSize',20) 
ylabel("$\dot{\theta}$ [rad/s]",'Interpreter',"latex",'FontSize',20) 
legend('${\dot{\theta}_{caso\, 8}}$','${\dot{\theta}_{caso\, 9}}$','interpreter','latex','FontSize',22, 'Location','southwest')
fontsize(gca,scale=1.3)
xlim([0 15])
axis tight

%% caso 4) velocità alpha
figure(4)
set(gcf,'Position',[100 100 600 600])
% fontsize(gcf,scale=1.3)
grid on
hLine1=plot(caso8.simulazione_out.time,caso8.simulazione_out.signals.values(:,4),...
    'LineStyle','-',...
    'LineWidth',1.5,...
    'Color', 'r');
hold on 
hLine=plot(caso9.simulazione_out.time,caso9.simulazione_out.signals.values(:,4),...
    'LineStyle','-',...
    'LineWidth',1.5,...
    'Color', 'b');


hLine.Color(4)=1;
hLine1.Color(4)=1;

hold off
xlabel("$t$ [s]",'Interpreter',"latex",'FontSize',20) 
ylabel("$\dot{\alpha}$ [rad/s]",'Interpreter',"latex",'FontSize',20) 
legend('${\dot{\alpha}_{caso\, 8}}$','${\dot{\alpha}_{caso\, 9}}$','interpreter','latex','FontSize',22, 'Location','southwest')
fontsize(gca,scale=1.3)
xlim([0 15])
axis tight
