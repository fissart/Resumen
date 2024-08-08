import settings;
outformat="pdf";
// batchView=true;
interactiveView=true;
batchMask=false;
interactiveMask=true;

settings.outformat = "pdf";
settings.render = 5;
import graph3;
import three;


size(10cm);
currentlight=Headlamp;

triple [][] sw =new triple[][] {
      {(0,0,1),(1,0,0),(1,0,0),(2,0,0)},
        {(0,1,0),(1,0,2),(1,0,1),(2,1,1.5)},
          {(0,1,0),(1,0,-1),(1,0,-1),(2,1,0)},
            {(0,2,0),(1,2,0),(1,2,0),(2,2,0)}};
write(sw[1][1]); 
for (int i=0; i<4; ++i){
for (int j=0; j<4; ++j){
dot(sw[i][j],orange); 
write(sw[i][j]); 
// write(sw[2].length);
}
}

patch www=patch(sw);
surface wsw = surface(www);


// draw(www);
draw(wsw,white);
draw(wsw.s[0].vequals(0.5),1bp+blue,currentlight);
draw(wsw.s[0].uequals(0.5),1bp+orange,currentlight); 
