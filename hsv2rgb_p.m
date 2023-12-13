function color_p=hsv2rgb_p(p)

H=p;
S=1;
V=0.9;

hsv_color_p=[H,ones(length(p),1)*S,ones(length(p),1)*V];
color_p=hsv2rgb(hsv_color_p);