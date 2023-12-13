%% hsv-color

tList=linspace(0,2.*pi,300);
rList=linspace(0.5,1,100);
[theta,R]=meshgrid(tList,rList);
 
X=cos(theta+pi/2).*R;
Y=sin(theta+pi/2).*R;  % ≥Ø…œ «front
Z=zeros(size(X));
 
hsvMesh=cat(3,theta./2./pi,ones(size(R)),R);
rgbMesh=hsv2rgb(hsvMesh);
 
% surf  Egocentric
surf(X,Y,Z,'EdgeColor','none','CData',rgbMesh)
axis equal;axis([-2,2,-2,2]);axis off;
view(0,90);
hold on;  
text(-0.1,1.1,'F');text(-1.2,0,'L');
text(-0.1,-1.1,'B');text(1.05,0,'R'); 
