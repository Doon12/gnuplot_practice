#!/usr/bin/gnuplot
set output 'a_3col.png'
set term png size 700,400 font "Helvetica,20"
set key samplen 0.5 vertical maxrows 1 maxcols 4
set key top center outside
set key font "Helvetica, 22"
#set key invert reverse Left outside
set key autotitle columnheader
set style data histogram
set style histogram rowstacked
#set style fill pattern 1 border -1
set grid
set boxwidth 0.75
set yrange [0:100]
set ylabel 'Percentage'

plot 'fig5_3col.txt' using (100*$2/($2+$3+$4+$5)):xtic(1) t 'flush' fs pattern 2 lw 3 lt 1 lc rgb 'black',\
	 '' using (100*$3/($2+$3+$4+$5)) t 'commit' fs pattern 0 lw 3 lt 1 lc rgb 'black',\
	 '' using (100*$4/($2+$3+$4+$5)) t 'dflush' fs pattern 4 lw 3 lt 1 lc rgb 'black',\
	 '' using (100*$5/($2+$3+$4+$5)) t 'jflush' fs pattern 3 lw 3 lt 1 lc rgb 'black'
