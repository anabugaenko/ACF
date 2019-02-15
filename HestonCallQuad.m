function call = HestonCallQuad(k,theta,sig,p,v0,r,T,S0,K,M)
warning off;
    call = exp(-r*T)*((phi(v0,S0,sig,k,theta,1,0,p,T,M,r)-K)/2+...
                       HestonP(k,theta,sig,p,v0,r,T,S0,K,M));
    
% function result = HestonP(k,theta,sig,p,v0,r,T,S0,K,M)
%     result = (1/pi)*(integral(@(eps)HestonIntegrand(eps,k,sig,p,...
%         v0,T,K,S0,theta,M,r),0,100));

function result = HestonP(k,theta,sig,p,v0,r,T,S0,K,M)
result = (1/pi)*(quadl(@HestonIntegrand,0,M,[],[],k,sig,p,...
    v0,T,K,S0,theta,M,r));

function result = HestonIntegrand(eps,k,sig,p, ...
                                  v0,T,K,S0,theta,M,r)
result = real(exp(-i*eps*log(K)).* Hestf(eps,k,sig,p,v0,T,K,S0,theta,M,r)...
         ./(i*eps) );

function f = Hestf(eps,k,sig,p,v0,T,K,S0,theta,M,r)
f = phi(v0,S0,sig,k,theta,(1+eps*i),0,p,T,M,r)-...
    K.*phi(v0,S0,sig,k,theta,(eps*i),0,p,T,M,r);
                              