t = -10:0.00025:10;
ut = (t >= 0);
xt = double(ut);
a = 0.23;
ht = exp(-a*t).*ut;
subplot(2,2,1);
plot(t,xt);
title('x(t) = u(t)');
subplot(2,2,2);
plot(t,ht);
title('h(t) = e^-^a^t*u(t)');
subplot(2,2,3);
r = -(length(t)-1):length(t)-1;
y = conv(xt,ht);
plot(r,y)
title('y(t) = x(t) * h(t)');
xlabel('<-----------t--------->');
ylabel('<-----------y(t)--------->');