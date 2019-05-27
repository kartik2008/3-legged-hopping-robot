%stationary phase
platept_1 = [0,0,0,1]'
platept_2 = [30,0,0,1]'
platept_3 = [15,30*sin(pi/3),0,1]'
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
hippt_2 = [30-6*cos(pi/6),6*sin(pi/6),0,1]'
hippt_3 = [15,30*sin(pi/3)-6,0,1]'
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
footpt_2 = [30-6*cos(pi/6),6*sin(pi/6),-10.5,1]'
footpt_3 = [15,30*sin(pi/3)-6,-10.5,1]'
sprpt_1 = [6*cos(pi/6),6*sin(pi/6),-0.5,1]'
sprpt_2 = [30-6*cos(pi/6),6*sin(pi/6),-0.5,1]'
sprpt_3 = [15,30*sin(pi/3)-6,-0.5,1]'
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
plot3(X,Y,Z,'k-o','LineWidth',3)
hold on
%plot3([x1,x3],[y1,y3],[z1,z3],'k-o','LineWidth',3)
plot3([x4,x10,x7],[y4,y10,y7],[z4,z10,z7],'r-o','LineWidth',5)
plot3([x5,x11,x8],[y5,y11,y8],[z5,z11,z8],'r-o','LineWidth',5)
plot3([x6,x12,x9],[y6,y12,y9],[z6,z12,z9],'r-o','LineWidth',5)