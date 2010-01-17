prologues:=2;

vardef triangle(expr A,B,C) =
  draw A--B--C--A withpen pencircle scaled 1pt;
enddef;

vardef rectangle(expr A, B, C) =
  draw A--B--(xpart B, ypart C)--(xpart A, ypart C)--A;
  label.rt(btex $h$ etex, (xpart B, (ypart C - ypart B)/2));
  label.bot(btex $b$ etex, ((xpart B - xpart A)/2, ypart A));
enddef;

u := 10mm;
pair A, B, C;
A := (0,0);
B := (5u,0);
C := (3u,2.5u);

beginfig(1);
  triangle(A, B, C);
endfig;

beginfig(2);
  triangle(A,B,(1.5*xpart B, ypart C));
endfig;

beginfig(3);
  triangle(A, B, C);
  rectangle(A, B, C);
endfig;

beginfig(4);
  triangle(A, B, C);
  rectangle(A, B, C);
  draw (xpart C,ypart A)--C;
endfig;

beginfig(5);
  fill (A--(xpart C, ypart A)--C--cycle) withcolor (0.4,1,0.2); % 6f3
  fill (A--C--(xpart A,ypart C)--cycle) withcolor (0.8,1,0.4); % cf6
  fill ((xpart C,ypart A)--B--C--cycle) withcolor (0.2,0.6,0.8); % 39c
  fill (B--C--(xpart B,ypart C)--cycle) withcolor (0.4,0.8,1); % 6cf
  triangle(A, B, C);
  rectangle(A, B, C);
  draw (xpart C,0)--C;
endfig;

beginfig(6);
  pair Q;
  Q := (1.5*xpart B, ypart C);
  triangle(A,B,Q);
  label.bot(btex $b$ etex, ((xpart B - xpart A)/2, ypart A));
  draw Q--(xpart Q, ypart B);
  label.rt(btex $h$ etex, (xpart Q, (ypart Q - ypart B)/2));
endfig;

end
