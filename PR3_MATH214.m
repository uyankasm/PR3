clear;
clear all;


i0=100*(10^-3);
L=0.98;
Vs=12;
R=14.2;
Z=L/R;

.........ÇİZDİRMEK İSTEDİĞİNİZ GRAFİĞİN YORUMUNU KALDIRIN.........
    
................H DEĞERİ=0.05.....................
    
....REAL VALUE...
    e=1;
    for a=0:0.05:0.6
        ie(e)=Vs/R+(i0-Vs/R)*exp(-a/Z);
        e=e+1;
    end

...EULER METHOD...
    i0=100*(10^-3);
    e=1;
for a=0:0.05:0.6
    i1e=i0+0.05*((Vs-R*i0)/L);
    b(e)=i1e;
    i0=i1e;
    t(e)=a;
    e=e+1;
end
% plot(t,b);
% title('EULER METHOD(h=0.05)');
% xlabel('t');
% ylabel('y');
% grid on

...Modified Euler's Method...
    i0=100*(10^-3);
    e=1;
for a=0:0.05:0.6
    m=(Vs-R*i0)/L;
    i1me=i0+(0.05/2)*(m+(Vs-R*(i0+0.05*m))/L);
    c(e)=i1me;
    i0=i1me;
    e=e+1;
end
% plot(t,c);
% title('MODIFIED EULERS METHOD(h=0.05)')
% grid on;
% xlabel('t');
% ylabel('y');
    
...MİDPOİNT RULE...
    i0=100*(10^-3);
 e=1;
 for a=0:0.05:0.6
    r=(Vs-R*i0)/L;
    i1m=i0+0.05*((Vs-R*(i0+(0.05/2)*r))/L);
    d(e)=i1m;
    e=e+1;
    i0=i1m;
 end
%  plot(t,d);
%  title('MIDPOINT RULE(h=0.05)');
%  grid on;
%  xlabel('t');
%  ylabel('y');
 
...Runge-Kutta Method Order Four...
    i0=100*(10^-3);
e=1;
for a=0:0.05:0.6
    k1=0.05*((Vs-R*i0)/L);
    k2=0.05*((Vs-R*(i0+k1/2))/L);
    k3=0.05*((Vs-R*(i0+k2/2))/L);
    k4=0.05*((Vs-R*(i0+k3))/L);
    i1r=i0+(1/6)*(k1+2*k2+2*k3+k4);
    f(e)=i1r;
    i0=i1r;
    e=e+1;
end
% plot(t,f);
% title('RUNGE-KUTTA METHOD ORDER FOUR(h=0.05)');
% grid on;
% xlabel('t');
% ylabel('y');
 

...ANALİZ GRAFİĞİ...
%     plot(t,ie,t,b,t,c,t,d,t,f);
%     title('COMPARISON(h=0.05)');
%     grid on;
%     legend('REAL VALUE','EULER','MODIFIED EULER','MIDPOINT','RUNGE-KUTTA');
%     xlabel('t');
%     ylabel('y');


..............H DEĞERİ=0.025.....................
    
    ....REAL VALUE...
    i0=100*(10^-3);
    e=1;
    for a=0:0.025:0.6
        iee(e)=Vs/R+(i0-Vs/R)*exp(-a/Z);
        e=e+1;
    end
   
    ...EULER METHOD...
    i0=100*(10^-3);
    e=1;
for a=0:0.025:0.6
    i1eh=i0+0.025*((Vs-R*i0)/L);
    z(e)=i1eh;
    i0=i1eh;
    t1(e)=a;
    e=e+1;
end
%     plot(t1,z)
%     title('EULER METHOD(h=0.025)');
%     grid on
%     xlabel('t');
%     ylabel('y');

...Modified Euler's Method...
    i0=100*(10^-3);
    e=1;
for a=0:0.025:0.6
    m=(Vs-R*i0)/L;
    i1meh=i0+(0.025/2)*(m+(Vs-R*(i0+0.025*m))/L);
    g(e)=i1meh;
    i0=i1meh;
    e=e+1;
end
%     plot(t1,g);
%     title('MODIFIED EULER METHOD(h=0.025)');
%     grid on
%     xlabel('t');
%     ylabel('y');

...MİDPOİNT RULE...
    i0=100*(10^-3);
    e=1;
 for a=0:0.025:0.6
    r=(Vs-R*i0)/L;
    i1mh=i0+0.025*((Vs-R*(i0+(0.025/2)*r))/L);
    h(e)=i1mh;
    e=e+1;
    i0=i1mh;
 end
%     plot(t1,h);
%     title('MIDPOINT METHOD(h=0.025)');
%     grid on
%     xlabel('t');
%     ylabel('y');

...Runge-Kutta Method Order Four...
    i0=100*(10^-3);
    e=1;
for a=0:0.025:0.6
    k1=0.025*((Vs-R*i0)/L);
    k2=0.025*((Vs-R*(i0+k1/2))/L);
    k3=0.025*((Vs-R*(i0+k2/2))/L);
    k4=0.025*((Vs-R*(i0+k3))/L);
    i1rh=i0+(1/6)*(k1+2*k2+2*k3+k4);
    j(e)=i1rh;
    i0=i1rh;
    e=e+1;
end
%     plot(t1,j)
%     title('Runge-Kutta Method Order Four(h=0.025)');
%     grid on
%     xlabel('t');
%     ylabel('y');

...ANALİZ GRAFİĞİ...
% plot(t1,iee,t1,z,t1,g,t1,h,t1,j);
% grid on;
% title('COMPARISON(h=0.025)');
% legend('REAL VALUE','EULER','MODIFIED EULER','MIDPOINT','RUNGE-KUTTA');
% xlabel('t');
% ylabel('y');    

........EULER 0.025 VS 0.05...............
% plot(t1,iee,t1,z,t,b);
% grid on
% title('EULER(h=0.05)vs(h=0.025)');
% xlabel('t');
% ylabel('y');
% legend('REAL VALUE','(0.025)','(0.05)');