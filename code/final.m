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

