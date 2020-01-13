#!/usr/bin/gnuplot

reset
set style fill solid noborder
set autoscale yfix
set offset 0,1,0.5,0.5
set xrange [0:*]
plot 'a.txt' using ($2*0.5):0:($2*0.5):(0.4):yticlabel(1) with boxxyerrorbars notitle
