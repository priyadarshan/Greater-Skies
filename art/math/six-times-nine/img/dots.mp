
prologues:=2;

beginfig(1);
  u := 5mm;
  rows := 9;
  cols := 6;
  drawarrow (1mm, 3u)--(1mm, 6u);
  pickup pencircle scaled 4pt;
  for j=1 upto rows:
    for i=1 upto cols:
      drawdot (i*u, j*u) withcolor (i-1)/(cols+1)*white;
    endfor;
  endfor;
  defaultscale:=0.9;
  label.bot(btex 6 dots etex, ((cols+1)*u/2, 1mm));
  label.bot(btex 9 times etex rotated 90, (-2mm, ((rows+1)/2+1)*u));
endfig;

beginfig(2);
  u := 5mm;
  rows := 6;
  cols := 9;
  drawarrow (1mm, 2u)--(1mm, 4u);
  pickup pencircle scaled 4pt;
  for j=1 upto rows:
    for i=1 upto cols:
      drawdot (i*u, j*u) withcolor (i-1)/(cols+1)*white;
    endfor;
  endfor;
  defaultscale:=0.9;
  label.bot(btex 9 dots etex, ((cols+1)*u/2, 1mm));
  label.bot(btex 6 times etex rotated 90, (-2mm, ((rows+1)/2+1)*u));
endfig;
end
