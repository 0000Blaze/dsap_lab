t = -10:0.005:10;
Tp = 4;
ht = 2*t/Tp.*sinc(2*t/Tp);
xt = double(and(t>=1,t<=100));
subplot(2,2,1);
plot(t,xt);
title('x(t) = 1, 1<=t<=100');
subplot(2,2,2);
plot(t,ht);
title('h(t) = 2t/Tp*sinc(2t/Tp)');
subplot(2,2,3);
r = -(length(t)-1):length(t)-1;
y = conv(xt,ht);
plot(r,y)
title('y(t) = x(t) * h(t)');
xlabel('<-----------t--------->');
ylabel('<-----------y(t)--------->');