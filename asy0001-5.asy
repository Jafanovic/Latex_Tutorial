if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="asy0001-5";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

//
// Global Asymptote definitions can be put here.
//
usepackage("bm");
texpreamble("\def\V#1{\bm{#1}}");

size(3inch);
import settings;
settings.render=10;
settings.maxtile=(50,50);
import graph3;
currentprojection=orthographic(2,2,2);
currentlight=(9,3,4);
// where plane intercepts x, y, and z axes
triple intercepts=(5,2,4);
path3 P = (intercepts.x,0,0)
--(0,intercepts.y,0)
--(0,0,intercepts.z)
--cycle;
draw(surface(P), lightblue+opacity(.85));
draw(P,red);
