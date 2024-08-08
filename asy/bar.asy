settings.outformat = "pdf";
texpreamble("\usepackage[lite]{mtpro2}");
import graph;
size(6cm,0);
string[] www={"www","$\sum_2^3$","ww www","w","www","www"};
real[] class={3,5.3,12.9,21.3,9.8,4.3};
real bordery=0.5;
real scale=0.6;
real dx=0.2;
real[] ttt;
draw((0,0)--(class.length-1,0));
draw((-bordery,min(scale*class))--(-bordery,max(scale*class)));

for (int i=0; i<class.length; ++i)
{
			ttt[i]=class[i]/sum(class);
 filldraw((i-dx,0)--(i+dx,0)--(i+dx,scale*class[i])--(i-dx,scale*class[i])--cycle,blue+1pt);
 draw((-bordery,scale*class[i])--(i,scale*class[i]),dashed);
 draw((i,0)--(i,scale*class[i]),orange+2pt);
 dot((i,0)^^(i,scale*class[i]),orange+2pt);
label(rotate(90)*www[i],(i,0),dir(-90));
label(format("%.2f", ttt[i])+"\%",(-bordery,scale*class[i]),dir(180));
label(string(class[i]),(i,scale*class[i]),dir(90));
}

label(rotate(90)*"$\sum_1^2x_i\delta x=\lim_{\delta\to\infty}\Delta_i$",(-bordery-3,(min(scale*class)+max(scale*class))/2),dir(-90));
label("$\sum_1^2x_i\delta x=\lim_{\delta\to\infty}\Delta_i$",((class.length-1)/2,-3),dir(-90));




