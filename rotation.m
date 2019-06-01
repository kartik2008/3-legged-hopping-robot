%stationary phase
view(45,45)
platept_1 = [0,0,0,1]'
platept_2 = [39,0,0,1]'
platept_3 = [39/2,39*sin(pi/3),0,1]'
x1=platept_1(1);
y1=platept_1(2);
z1=platept_1(3);
x2=platept_2(1);
y2=platept_2(2);
z2=platept_2(3);
x3=platept_3(1);
y3=platept_3(2);
z3=platept_3(3);
hippt_1 = [6*cos(pi/6),6*sin(pi/6),0,1]'
hippt_2 = [39-6*cos(pi/6),6*sin(pi/6),0,1]'
hippt_3 = [39/2,39*sin(pi/3)-6,0,1]'
x4=hippt_1(1);
y4=hippt_1(2);
z4=hippt_1(3);
x5=hippt_2(1);
y5=hippt_2(2);
z5=hippt_2(3);
x6=hippt_3(1);
y6=hippt_3(2);
z6=hippt_3(3);
footpt_1 = [6*cos(pi/6),6*sin(pi/6),-10.5,1]'
footpt_2 = [39-6*cos(pi/6),6*sin(pi/6),-10.5,1]'
footpt_3 = [39/2,39*sin(pi/3)-6,-10.5,1]'
sprpt_1 = [6*cos(pi/6),6*sin(pi/6),-0.5,1]'
sprpt_2 = [39-6*cos(pi/6),6*sin(pi/6),-0.5,1]'
sprpt_3 = [39/2,39*sin(pi/3)-6,-0.5,1]'
x7=footpt_1(1);
y7=footpt_1(2);
z7=footpt_1(3);
x8=footpt_2(1);
y8=footpt_2(2);
z8=footpt_2(3);
x9=footpt_3(1);
y9=footpt_3(2);
z9=footpt_3(3);
x10=sprpt_1(1);
y10=sprpt_1(2);
z10=sprpt_1(3);
x11=sprpt_2(1);
y11=sprpt_2(2);
z11=sprpt_2(3);
x12=sprpt_3(1);
y12=sprpt_3(2);
z12=sprpt_3(3);
X=[x1,x2,x3,x1];
Y=[y1,y2,y3,y1];
Z=[z1,z2,z3,z1];
%plot3(X,Y,Z,'k-o','LineWidth',3)

%plot3([x1,x3],[y1,y3],[z1,z3],'k-o','LineWidth',3)
for i=-0.5:-0.01:-1.5
    z10=i
    z11=i
    plot3(X,Y,Z,'k-o','linewidth',3)
    hold on;
    plot3([x4,x10,x7],[y4,y10,y7],[z4,z10,z7],'r-o','LineWidth',5)
    plot3([x5,x11,x8],[y5,y11,y8],[z5,z11,z8],'r-o','LineWidth',5)    
    plot3([x6,x12,x9],[y6,y12,y9],[z6,z12,z9],'r-o','LineWidth',5)
    hold off
   grid on;
   box on;
   axis equal;
   view(80,10);
    pause(0.01)
end    
for i=-1.5:0.01:0.204
	z10=i
	z11=i
	plot3(X,Y,Z,'k-o','linewidth',3)
    hold on;
    plot3([x4,x10,x7],[y4,y10,y7],[z4,z10,z7],'r-o','LineWidth',5)
    plot3([x5,x11,x8],[y5,y11,y8],[z5,z11,z8],'r-o','LineWidth',5)
    plot3([x6,x12,x9],[y6,y12,y9],[z6,z12,z9],'r-o','LineWidth',5)
    hold off
    grid on;
    box on;
    axis equal;
    view(80,10);
    pause(0.01)
end
hold on
plot3(X,Y,Z,'k-o','LineWidth',3)
hold on
t0=0;
tf=20;
x0=0;
xdot0=0;
IC=[x0,xdot0];
timespan=[t0:3:tf];
sdot=@(t,s) [s(2);-t-s(1)-s(2)]
[time,state_values]=ode45(sdot,timespan,IC);
%plot(time,state_values(:,1))
count=0;
for t= 0:pi/600:pi/60
rotate=[[1,0,0,0];[0,cos(-t),-sin(-t),0];[0,sin(-t),cos(-t),0];[0,0,0,1]];
rotate1 = [[1,0,0,0];[0,cos(t-count*pi/600),-sin(t-count*pi/600),0];[0,sin(t-count*pi/600),cos(t-count*pi/600),0];[0,0,0,1]]
m=-0.1;
compression_3 = [1,0,0,0;0,1,0,0;0,0,1,m;0,0,0,1];
m=m-0.1;
bringback=[[1,0,0,-x9];[0,1,0,-y9];[0,0,1,-z9];[0,0,0,1]];
bringback2=[[1,0,0,x9];[0,1,0,y9];[0,0,1,z9];[0,0,0,1]];
platept_1=bringback2*rotate*bringback*platept_1
platept_2=bringback2*rotate*bringback*platept_2
platept_3=bringback2*rotate*bringback*platept_3
x1=platept_1(1);
y1=platept_1(2);
z1=platept_1(3);
x2=platept_2(1);
y2=platept_2(2);
z2=platept_2(3);
x3=platept_3(1);
y3=platept_3(2);
z3=platept_3(3);
X=[x1,x2,x3,x1];
Y=[y1,y2,y3,y1];
Z=[z1,z2,z3,z1];
hippt_1=bringback2*rotate*bringback*hippt_1
hippt_2=bringback2*rotate*bringback*hippt_2		
hippt_3=bringback2*rotate*bringback*hippt_3
sprpt_1=bringback2*rotate*bringback*sprpt_1
sprpt_2=bringback2*rotate*bringback*sprpt_2
if t>0
    sprpt_3=bringback2*rotate*compression_3*rotate1*bringback*sprpt_3
else 
   sprpt_3=bringback2*rotate*bringback*sprpt_3
end
footpt_1=bringback2*rotate*bringback*footpt_1
footpt_2=bringback2*rotate*bringback*footpt_2
x12=sprpt_3(1);
y12=sprpt_3(2);
z12=sprpt_3(3);
x6=hippt_3(1);
y6=hippt_3(2);
z6=hippt_3(3);
x7=footpt_1(1);
y7=footpt_1(2);
z7=footpt_1(3);
x8=footpt_2(1);
y8=footpt_2(2);
z8=footpt_2(3);
x4=hippt_1(1);
y4=hippt_1(2);
z4=hippt_1(3);
x5=hippt_2(1);
y5=hippt_2(2);
z5=hippt_2(3);
x10=sprpt_1(1);
y10=sprpt_1(2);
z10=sprpt_1(3);
x11=sprpt_2(1);
y11=sprpt_2(2);
z11=sprpt_2(3);
plot3(X,Y,Z,'r-o','LineWidth',3)
hold on;
    plot3([x6,x12,x9],[y6,y12,y9],[z6,z12,z9],'k-o','LineWidth',5)
 plot3([x4,x10,x7],[y4,y10,y7],[z4,z10,z7],'k-o','LineWidth',5)
    plot3([x5,x11,x8],[y5,y11,y8],[z5,z11,z8],'k-o','LineWidth',5)
    grid on; 
    box on; 
    axis equal;
    xlabel('xaxis');
    ylabel('yaxis');
    zlabel('zaxis');
    view(90,0)
    hold off;
pause(0.1)
count=count+1;

end