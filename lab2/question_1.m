function question_1()
t = (-1:0.01:1)';

subplot(2,2,1);
impulse = t==0;
a = stem(t,impulse,'LineWidth',3,'Color',[0,0.7,0.9]);
set(a, 'Marker', 'none');
title('Subplot 1: Impulse Response Function');

subplot(2,2,2);
unitstep = t>=0;
plot(t,unitstep,'LineWidth',3,'Color',[0,0.7,0.9]);
title('Subplot 2: Unit Step Function');

subplot(2,2,3);
ramp = t.*unitstep;
plot(t,ramp,'LineWidth',3,'Color',[0,0.7,0.9]);
title('Subplot 3: Ramp Function');

subplot(2,2,4);
rect = ones(1,numel(t)).*(abs(t)<1/2);
plot(t,rect,'LineWidth',3,'Color',[0,0.7,0.9]);
title('Subplot 4: Rectangular Function');

endfunction