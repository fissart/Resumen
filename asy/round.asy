settings.outformat = "pdf";
size(12cm);
		string[] www={"www","$\sum_2^3$","ww www","w","www","www","www","www"};
		real[] w1={20,30,10,10,10,30,20,30};
		real[] w2={0,0,0,0,0,0,0,0};
		real[] t1;
		real r=1.68;
		real[] t2;
		real[] t3;
		real[] ttt;
		int n=w1.length;
		t2[0]=0;
		for(int i=0; i < n; ++i ){
			t1[i]=w1[i]*360/sum(w1);
				ttt[i]=w1[i]/sum(w1);
			t2[i+1]=t2[i]+t1[i];
			t3[i]=t2[i]+t1[i]/2;
			path sector=arc((0,0),r,t2[i+1],t2[i])--arc((0,0),r+0.3,t2[i],t2[i+1])--cycle;
			path sector2=(0,0)--arc((0,0),r-0.05,t2[i],t2[i+1])--cycle;
			transform tt1=shift(w2[i]*dir(t3[i]));
			transform tt2=shift((2.3+w2[i])*dir(t3[i])+0.3*dir(t3[i]>91-1 && t3[i]<271-1?180:0));
			// dot(tt2*(0,0));

			filldraw(tt1*sector, i/n*yellow+(1-i/n)*blue);
			// fill(tt1*sector2, i/n*magenta+(1-i/n)*orange);
			dot((r+0.2+w2[i])*dir(t3[i]));
			draw((2.3+w2[i])*dir(t3[i])+0.3*dir(t3[i]>91-1 && t3[i]<271-1?180:0)--(2.3+w2[i])*dir(t3[i])--(r+0.2+w2[i])*dir(t3[i]));
			label(
				rotate(0)*minipage(t3[i]>91-1 && t3[i]<271-1?"\begin{flushright}"+www[i]+" "+format("%.3f", ttt[i])+"\%\end{flushright}":"\begin{flushleft}"+www[i]+" "+format("%.3f", ttt[i])+"\%\end{flushleft}",3.1cm),
				tt2*(0,0),t3[i]>91-1 && t3[i]<271-1?W:E//,Fill(white)
			);
		}

