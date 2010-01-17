prologues:=2;

verbatimtex
%&latex
\documentclass[12pt]{article}
\begin{document}
etex

vardef paral(expr A,B,C,D) =
  draw A--B--C--D--A withpen pencircle
       scaled 1.5pt;
  lbldots(A);
enddef;

u := 12mm;
pair A, B, C, D, E, F;
A := (0,0);
B := (5u,0);
C := (12u,2.5u);
D = (xpart A + xpart C - xpart B, ypart C);
E = (xpart A, ypart C);
F = (xpart C, ypart A);

vardef lbldots(expr L) =
  %% dotlabel.bot("A", A);
  %% dotlabel.bot("B", B);
  %% dotlabel.top("C", C);
  %% dotlabel.top("D", D);
  %% dotlabel.top("E", E);
  %% dotlabel.top("F", F);
enddef;

vardef tag(expr L) =
  label.rt(btex {\Large $h$ } etex, (xpart F, (ypart C - ypart B)/2));
  label.top(btex {\Large $b$ } etex, (xpart D + (xpart C - xpart D)/2, ypart D));
enddef;

beginfig(1);
  paral(A, B, C, D);
  draw C--(xpart C, ypart A);
  tag(A);
endfig;

beginfig(2);
  fill (A--B--C--D--cycle) withcolor (0.8,1,0.4); % 6f3
  draw A--B;
  draw D--C;
  draw A--D--E--A withpen pencircle scaled 1.5pt;
  draw B--F--C--B withpen pencircle scaled 1.5pt;
  lbldots(A);
  tag(A);
endfig;

beginfig(3);
  pair G;
  G = (xpart D, ypart A);
  fill (D--C--F--G--cycle) withcolor (0.8,1,0.4); % 6f3
  draw A--E--D--G--A withpen pencircle scaled 1.5pt;
  draw A--D withpen pencircle scaled 1.5pt;
  draw D--C--F--G;
  lbldots(A);
  tag(A);
endfig;
