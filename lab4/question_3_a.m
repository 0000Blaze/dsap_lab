sos = [0.0007378, 2*0.0007378, 0.0007378, 1,-1.2686,0.7051;1,2,1,1,-1.0106,0.3583;1,2,1,1,-0.9044,0.2155];
[zeros,poles,k] = sos2zp(sos);
zeros
poles
k
zplane(z,p);