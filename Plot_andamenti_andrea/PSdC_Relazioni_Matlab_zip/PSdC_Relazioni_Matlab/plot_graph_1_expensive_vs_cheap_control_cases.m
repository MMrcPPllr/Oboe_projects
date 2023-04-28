%% load file

caso1 = load('Oboe_projects-Andrea-s_Branch/caso1.mat');
caso2 = load('Oboe_projects-Andrea-s_Branch/caso2.mat');
caso3 = load('Oboe_projects-Andrea-s_Branch/caso3.mat');
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
fprintf('COMMENTI detti durante il laboratorio: \n')
disp('caso 1: non buono --> non mantiene la posizione il motore (rotary) + ROBUSTO al disturbo ');
disp('caso 2: ROBUSTO + non tiene la posizione (come caso 1) ');
disp('caso 3: ROBUSTO + sembra tenere meglio la posizione rispetto al caso 1 e 2');
%% Plot figure
%% caso 1) posizione theta
figure(1)
set(gcf,'Position',[100 100 600 600])
% fontsize(gcf,scale=1.3)
grid on
hLine1=plot(caso1.simulazione_out.time,caso1.simulazione_out.signals.values(:,1),...
    'LineStyle','-',...
    'LineWidth',1.5,...
    'Color', 'r');
hold on 
hLine=plot(caso2.simulazione_out.time,caso2.simulazione_out.signals.values(:,1),...
    'LineStyle','-',...
    'LineWidth',1.5,...
    'Color', 'b');
hold on 
hLine2=plot(caso3.simulazione_out.time,caso3.simulazione_out.signals.values(:,1),...
    'LineStyle','-',...
    'LineWidth',1.5,...
    'Color', 'g');

hLine.Color(4)=1;
hLine1.Color(4)=1;
hLine2.Color(4)=1;
hold off
xlabel("$t$ [s]",'Interpreter',"latex",'FontSize',20) 
ylabel("$\theta$ [rad]",'Interpreter',"latex",'FontSize',20) 
legend('${{\theta}_{caso\, 1}}$','${{\theta}_{caso\, 2}}$','${{\theta}_{caso\, 3}}$','interpreter','latex','FontSize',22, 'Location','southwest')
fontsize(gca,scale=1.3)
xlim([0 15])
axis tight


%% caso 1) posizione alpha
figure(2)
set(gcf,'Position',[100 100 600 600])
% fontsize(gcf,scale=1.3)
grid on
hLine1=plot(caso1.simulazione_out.time,caso1.simulazione_out.signals.values(:,2),...
    'LineStyle','-',...
    'LineWidth',1.5,...
    'Color', 'r');
hold on 
hLine=plot(caso2.simulazione_out.time,caso2.simulazione_out.signals.values(:,2),...
    'LineStyle','-',...
    'LineWidth',1.5,...
    'Color', 'b');
hold on 
hLine2=plot(caso3.simulazione_out.time,caso3.simulazione_out.signals.values(:,2),...
    'LineStyle','-',...
    'LineWidth',1.5,...
    'Color', 'g');

hLine.Color(4)=1;
hLine1.Color(4)=1;
hLine2.Color(4)=1;
hold off
xlabel("$t$ [s]",'Interpreter',"latex",'FontSize',20) 
ylabel("$\alpha$ [rad]",'Interpreter',"latex",'FontSize',20) 
legend('${{\alpha}_{caso\, 1}}$','${{\alpha}_{caso\, 2}}$','${{\alpha}_{caso \,3}}$','interpreter','latex','FontSize',22, 'Location','southwest')
fontsize(gca,scale=1.3)
xlim([0 15])
axis tight

%% caso 1) velocità theta
figure(3)
set(gcf,'Position',[100 100 600 600])
% fontsize(gcf,scale=1.3)
grid on
hLine1=plot(caso1.simulazione_out.time,caso1.simulazione_out.signals.values(:,3),...
    'LineStyle','-',...
    'LineWidth',1.5,...
    'Color', 'r');
hold on 
hLine=plot(caso2.simulazione_out.time,caso2.simulazione_out.signals.values(:,3),...
    'LineStyle','-',...
    'LineWidth',1.5,...
    'Color', 'b');
hold on 
hLine2=plot(caso3.simulazione_out.time,caso3.simulazione_out.signals.values(:,3),...
    'LineStyle','-',...
    'LineWidth',1.5,...
    'Color', 'g');

hLine.Color(4)=1;
hLine1.Color(4)=1;
hLine2.Color(4)=1;
hold off
xlabel("$t$ [s]",'Interpreter',"latex",'FontSize',20) 
ylabel("$\dot{\theta}$ [rad/s]",'Interpreter',"latex",'FontSize',20) 
legend('${\dot{\theta}_{caso\, 1}}$','${\dot{\theta}_{caso\, 2}}$','${\dot{\theta}_{caso\, 3}}$','interpreter','latex','FontSize',22, 'Location','southwest')
fontsize(gca,scale=1.3)
xlim([0 15])
axis tight

%% caso 1) velocità alpha
figure(4)
set(gcf,'Position',[100 100 600 600])
% fontsize(gcf,scale=1.3)
grid on
hLine1=plot(caso1.simulazione_out.time,caso1.simulazione_out.signals.values(:,4),...
    'LineStyle','-',...
    'LineWidth',1.5,...
    'Color', 'r');
hold on 
hLine=plot(caso2.simulazione_out.time,caso2.simulazione_out.signals.values(:,4),...
    'LineStyle','-',...
    'LineWidth',1.5,...
    'Color', 'b');
hold on 
hLine2=plot(caso3.simulazione_out.time,caso3.simulazione_out.signals.values(:,4),...
    'LineStyle','-',...
    'LineWidth',1.5,...
    'Color', 'g');

hLine.Color(4)=1;
hLine1.Color(4)=1;
hLine2.Color(4)=1;
hold off
xlabel("$t$ [s]",'Interpreter',"latex",'FontSize',20) 
ylabel("$\dot{\alpha}$ [rad/s]",'Interpreter',"latex",'FontSize',20) 
legend('${\dot{\alpha}_{caso\, 1}}$','${\dot{\alpha}_{caso\, 2}}$','${\dot{\alpha}_{caso\, 3}}$','interpreter','latex','FontSize',22, 'Location','southwest')
fontsize(gca,scale=1.3)
xlim([0 15])
axis tight
