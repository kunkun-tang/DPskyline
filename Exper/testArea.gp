## Experiment Figures
#set size 1,1
#set origin 0,0
#set multiplot
total_box_width_relative=0.75
gap_width_relative=0.1
n=3

set size 0.55,0.55
#set origin 0,0.5
set key top right reverse spacing 1.2
#set key box
set border 15
set key width 2.2
set key font ",20"
set key width 2.2
set key font ",20"
#set grid
#set xlabel "Object num"
set ylabel "area1 * area2" offset 1.7

#set datafile separator <,>
set xtics border nomirror
set ytics nomirror 

set xlabel "          x value    " offset -1.7
set xlabel font ",16"

set xtics ("0.2" 0.2, "0.4" 0.4, "0.6" 0.6, "0.8" 0.8)
set xrange [0.1:1.0]
set yrange [0: 0.05]
set xtics font ", 20"
set ytics font ", 20"
set ylabel font ",16"
#set logscale y
#set logscale x

plot  "firstFile.txt" using 1:2 title "Mid" with linespoints lt 2 ps 1.7  lc 3 lw 4 ,"firstFile.txt" using 1:3 title "Bottom" with linespoints lt 4 ps 1.7 lc 4 lw 3, "firstFile.txt" using 1:4 title "Top" with linespoints lt 7 ps 1.7 lc 5 lw 4

#set terminal postscript eps color solid "Helvetica-Bold" 10
set terminal postscript eps enhanced solid "Helvetica" 15
#set terminal post eps        # set term post enh
set output "testArea.eps"
replot
reset
