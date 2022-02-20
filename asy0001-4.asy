if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="asy0001-4";
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

draw((0,0)--(50,0),BeginArrow);
draw((0,-10)--(50,-10),MidArrow);
draw((0,-20)--(50,-20),EndArrow);
draw((0,-30)--(50,-30),Arrows);
