% This subplot plot the 1st column
mo=input('Enter the mass of falling object in kg ');
%vo=input('Enter the volume of falling object ');
ho=input('Enter the height of falling object in meter ');
vt=input('Enter the volumne of water ');
ht=input('Enter the height of water tank ');
hw=vt/400;
ho=hw+ho;
subplot(2,2,1);
x=[2,2,2,8,8,8];
y=[1,8,1,1,1,8];
p1=plot(x,y);
axis([0 20 0 20]);
hold on;
rec=rectangle('Position',[2,1,6,4],'FaceColor','blue');
for i = 9:-1:5
    h=filledCircle([5,i],.3,1000,'black');
    pause(1);
    if i~=5
        delete(h);
    end
end
po=1000,g=9.8,pi=3.14;
h=sqrt((ho*mo)/(po*g*pi))*21.923

% This subplot plot the 2nd column
x=-50:0.5:50;
y=-50:0.5:50;
[X,Y] = meshgrid(x,y);
R=sqrt(X.^2+Y.^2); %radius
k=0.1; % wave vector10
phi=0; % phase
lemda=-.5;
subplot(2,2,2);
for freqrps=0.1:0.1:2*pi
        Z=h*exp(lemda*freqrps)*sin((2*pi-freqrps)*k*R);
        surf(X,Y,Z,'Facecolor','blue','Edgecolor','none');
        axis equal;
        camlight right  ; 
        lighting phong;
        getframe;
end

% This subplot plot the 3rd column
subplot(2,2,3);
x=[2,2,2,8,8,8];
y=[1,8,1,1,1,8];
p1=plot(x,y);
axis([0 20 0 20]);
hold on;
rec=rectangle('Position',[2,1,6,4],'FaceColor','blue');
for i = 5:-1:2
    h1=filledCircle([5,i],.3,1000,'black');
    pause(1);
    if i~=0
        delete(h1);
    end
end

% This subplot plot the result
subplot(2,2,4);

if hw+h>=ht
    title("Danger? :- Yes , there is danger");    
else
    hw+h>ht
    title('Danger? :- No, we are in safe zone ');
end
