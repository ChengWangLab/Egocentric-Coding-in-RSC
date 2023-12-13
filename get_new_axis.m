function axis2=get_new_axis(axis1)

x_mean=(axis1(1)+axis1(2))/2;
y_mean=(axis1(3)+axis1(4))/2;

xy_range=max(axis1(2)-axis1(1),axis1(4)-axis1(3));
wid=xy_range/2;

axis2=[x_mean-wid,x_mean+wid,y_mean-wid,y_mean+wid];
