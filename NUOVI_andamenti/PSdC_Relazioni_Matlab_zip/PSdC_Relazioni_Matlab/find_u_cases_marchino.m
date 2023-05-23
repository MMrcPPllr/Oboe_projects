%sistemazione dello stato per trovare l'ingresso u
stato_caso1 =  caso1.simulazione_out.signals.values;
stato_caso1(:,5) = [];
stato_caso1 = stato_caso1';
u_caso1 = caso1.K*stato_caso1;

stato_caso2 =  caso2.simulazione_out.signals.values;
stato_caso2(:,5) = [];
stato_caso2 = stato_caso2';
u_caso2 = caso2.K*stato_caso2;

stato_caso3 =  caso3.simulazione_out.signals.values;
stato_caso3(:,5) = [];
stato_caso3 = stato_caso3';
u_caso3 = caso3.K*stato_caso3;


stato_caso4 =  caso4.simulazione_out.signals.values;
stato_caso4(:,5) = [];
stato_caso4 = stato_caso4';
u_caso4 = caso4.K*stato_caso4;

stato_caso5 =  caso5.simulazione_out.signals.values;
stato_caso5(:,5) = [];
stato_caso5 = stato_caso5';
u_caso5 = caso5.K*stato_caso5;

stato_caso16 =  caso16.simulazione_out.signals.values;
stato_caso16(:,5) = [];
stato_caso16 = stato_caso16';
u_caso16 = caso16.K*stato_caso16;

stato_caso17 =  caso17.simulazione_out.signals.values;
stato_caso17(:,5) = [];
stato_caso17 = stato_caso17';
u_caso17 = caso17.K*stato_caso5;