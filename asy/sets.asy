settings.outformat = "pdf";
size(7cm);

real r=1.5;
pair z0=(0,0), z1=(-1,0), z2=(1,0), z5=(1,1.5);
path c1=circle(z1,r), c2=circle(z2,1.2*r), c3=circle(z5,1.5*r);

label("$A$",z1+r*dir(135),dir(135));
label("$B$",z2+1.2r*dir(-45),dir(-45));
label("$C$",z5+1.5r*dir(5),dir(5));

label("$\alpha$",z1+0.9*dir(185));
label("$\beta$",z5+1.3*dir(95));
label("$\theta$",z5+1.8*dir(191));
label("$\delta$",z2+1.2*dir(155));
label("$\epsilon$",z2+0.8*dir(85));
label("$\zeta$",z2+1.45*dir(215));

draw("$\delta$",c1,18*dir(-51),orange+2pt);
draw(c2,blue+1.2pt+linetype("3 3 1 2"));
draw(c3,dot);

// label("$B\cap B\cap C$",(z2+z1)/2+0.2*dir(135));
// pen colour1=magenta, colour2=orange, colour3=blue;
// fill(c1,colour1);
// fill(c2,colour1);
// fill(c3,colour3);

// picture intersection;
// fill(intersection,c1,colour1+colour2);
// clip(intersection,c2);


// picture intersectionw;
// fill(intersectionw,c2,colour1+colour3);
// clip(intersection,c3);

// add(intersectionw);
// add(intersection);

		// pair z=(0,-2);
		// real m=3;
		// margin BigMargin=Margin(0,m*dot(unit(z1-z),unit(z0-z)));

		// draw(Label("$A\cap B$",0),conj(z)--z0,Arrow,BigMargin);
		// draw(Label("$A\cup B$",0),z--z0,Arrow,BigMargin);
		// draw(z--z1,Arrow,Margin(0,m));
		// draw(z--z2,Arrow,Margin(0,m));
		//shipout(bbox(0.25cm));
