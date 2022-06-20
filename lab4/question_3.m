sos = [[0.0007378 , 2*0.0007378,  0.0007378 , 1 , 1.2686 , 0.7051]
    [1, 2, 1, 1, -1.0106, 0.3583]
    [1, 2, 1, 1, -0.9044, 0.2155]];

%part a       

%section 1
a1= [1 1.2686 0.7051];
b1 = [0.0007378 2*0.0007378 0.0007378];
figure(1);
zplane(b1,a1)

%section 2
a2 = [1 -1.0106 0.3583];
b2 = [1 2 1];
figure(2);
zplane(b2,a2);

%section 3
a3 = [1 -0.9044 0.2155];
b3=b2;
figure(3);
zplane(b3,a3);

%part b

figure(4)
[zeros,poles,k] = sos2zp(sos);
zeros
poles
zplane(z,p);

%part C
%under construction
