

% initialise variables
v0 = 0.09;
S0 = 100.0;
k = 1.15;
t = 0;
theta = 0.348;
p = -0.64;
sig = 0.39;
r = 0.05;
M = 100;
n = 30; 
K = 90;
T = 1.5;

s = 1;
w = 0;

HestonCallQuad(k,theta,sig,p,v0,r,T,S0,K,M)
%H(k,i,w,p,sig,T,n)

%phi(v0,S0,sig,k,theta,1,0,p,T,M,r)