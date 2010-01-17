prologues:=2;
defaultscale := 2.5;

verbatimtex
%&latex
\documentclass[12pt]{article}
\begin{document}
etex

vardef paral(expr A,B,C,D) =
  draw A--B--C--D--A withpen pencircle scaled 1pt;
enddef;

vardef rectangle(expr A, B, C) =
  draw A--B--(xpart B, ypart C)--(xpart A, ypart C)--A;
  label.rt(btex {\Large $h$} etex, (xpart B, (ypart C - ypart B)/2));
  label.bot(btex {\Large $b$} etex, ((xpart B - xpart A)/2, ypart A));
enddef;

vardef boldRectangle(expr A, B, C) =
  draw A--B--(xpart B, ypart C)--(xpart A, ypart C)--A
    withpen pencircle scaled 2pt;
enddef;

u := 12mm;
pair A, B, C, Corg, D, E, F;
A := (0,0);
B := (5u,0);
Corg = (7u,2.5u);
C = Corg;
D = (xpart A + xpart C - xpart B, ypart C);
E = (xpart B, ypart C);
F = (xpart A, ypart C);

beginfig(1);
  paral(A, B, C, D);
endfig;

beginfig(2);
  paral(A, B, C, D);
  rectangle(A, B, C);
endfig;

beginfig(3);
  fill (B--(xpart B, ypart C)--C--cycle) withcolor (0.4,1,0.2); % 6f3
  fill (A--(xpart A, ypart C)--D--cycle) withcolor (0.4,1,0.2); % 6f3
  paral(A, B, C, D);
  rectangle(A, B, C);
  boldRectangle(A, B, C);
endfig;

C := (12u,2.5u);
D := (xpart A + xpart C - xpart B, ypart C);

beginfig(4);
  paral(A, B, C, D);
endfig;

vardef lbldots(expr L) =
%%   dotlabel.bot("A", A);
%%   dotlabel.bot("B", B);
%%   dotlabel.top("C", C);
%%   dotlabel.top("D", D);
%%   dotlabel.top("E", E);
%%   dotlabel.top("F", F);
enddef;

pair IA, IB;
IA = whatever[A, D] = whatever[B, E];
IB = whatever[D, (xpart D, ypart A)] = whatever[B, C];

beginfig(5);
  fill (A--IA--E--F--cycle) withcolor (0.8,1,0.4); % cf6
  fill (B--C--D--IA--cycle) withcolor (0.4,0.8,1); % 6cf
  fill (A--B--IA--cycle) withcolor (0.4,1,0.2); % 6f3
  paral(A, B, C, D);
  rectangle(A, B, Corg);
endfig;

vardef bigrect(expr A, C) =
  draw A--(xpart C, ypart A)--C--(xpart A, ypart C)--A withpen pencircle
       scaled 2pt;
enddef;

beginfig(6);
  fill (A--IA--E--F--cycle) withcolor (0.8,1,0.4); % cf6
  fill (B--C--D--IA--cycle) withcolor (0.4,0.8,1); % 6cf
  fill (A--B--IA--cycle) withcolor (0.4,1,0.2); % 6f3
  paral(A, B, C, D);
  rectangle(A, B, Corg);
  bigrect(A, D);
  lbldots((0,0));
endfig;

beginfig(7);
  fill (A--IA--E--F--cycle) withcolor (0.8,1,0.4); % cf6
  fill (A--B--IA--cycle) withcolor (0.4,1,0.2); % 6f3
  fill (B--IB--D--IA--cycle) withcolor (0.4,0.8,1); % 6cf
  fill (A--IA--(xpart A, ypart IA)--cycle) withcolor (0.4,1,0.2); % 6f3
  draw IA--(xpart A, ypart IA);
  paral(A, B, C, D);
  rectangle(A, B, Corg);
  bigrect(A, D);
  lbldots(IA);
endfig;  

beginfig(8);
  fill (A--D--F--cycle) withcolor 0.6white;
  fill (A--(xpart D, ypart A)--D--cycle) withcolor 0.8white;
  draw IA--(xpart A, ypart IA);
  paral(A, B, C, D);
  rectangle(A, B, Corg);
  bigrect(A, D);
  lbldots(IA);
endfig;  

beginfig(9);
  fill (A--IA--E--F--cycle) withcolor (0.8,1,0.4); % cf6
  fill (A--B--IA--cycle) withcolor (0.4,1,0.2); % 6f3
  fill (B--IB--D--IA--cycle) withcolor (0.4,0.8,1); % 6cf
  fill (A--IA--(xpart A, ypart IA)--cycle) withcolor (0.4,1,0.2); % 6f3
  fill (B--(xpart D, ypart A)--IB--cycle) withcolor 0.6white;
  fill (IA--D--E--cycle) withcolor 0.6white;
  draw IA--(xpart A, ypart IA);
  paral(A, B, C, D);
  rectangle(A, B, Corg);
  bigrect(A, D);
  lbldots(IA);
endfig;  

end
