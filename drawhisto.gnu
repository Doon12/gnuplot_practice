#!/usr/bin/gnuplot
set output 'a.png'
set term png size 1400,800 font "Helvetica,40"
set key at graph 0.24, 0.85 horizontal samplen 0.5
set key top left outside
#set key invert reverse Left outside
set key autotitle columnheader
set style data histogram
set style histogram rowstacked
#set style fill pattern 1 border -1
set grid
set boxwidth 0.75
set yrange [0:100]
set ylabel 'Percentage'
`
plot 'fig5.txt' using 2:xtic(1) fs pattern 3 lw 3 lt 1 lc rgb 'black',\
	 '' using 3 fs pattern 1 lw 3 lc rgb 'black',\
	 '' using 4 fs pattern 0 lw 3 lc rgb 'black',\
	 '' using 5 fs pattern 4 lw 3 lc rgb 'black',\
	 '' using 6 fs pattern 2 lw 3 lc rgb 'black',\
	 '' using 7 fs pattern 5 lw 3 lc rgb 'black'
