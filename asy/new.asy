settings.outformat = "pdf";
import graph;
size(300,0);

real f1(real x) {return (1+x^3);}
real f2(real x) {return (3-x);}
real f3(real x) {return ((x-3)^2);}

xaxis("$x$",LeftTicks,Arrow);
yaxis("$y$",RightTicks,Arrow);

draw("$y=1+x^2$",graph(f1,-2,1));
dot((1,f1(1)),UnFill);

draw("$y=4-x$",graph(f2,1,3),LeftSide,blue+linetype("5 5 5 3")+1pt);
draw("$(x-3)^2$",graph(f3,3,5),RightSide,magenta);
dot((1,f2(1)),black);
dot((3,f3(3)),UnFill);
dot((3,f2(3)),black);
dot((-1,f1(-1)),UnFill);
