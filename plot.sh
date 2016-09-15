#!/bin/sh
#usage ./dqm_plot.sh nome_rawdata_file numero_evento soglia
echo "Decoding data file $1" 
/home/albergo/ObjectDump/objectdump/ObjectDump_ExperimentalVersion/RawData/decode724 -r $1 -o acq.txt
echo "Getting file ev.txt. Event $2 with threshold $3"
./dqm_plot acq.txt $2 $3

if [ $2 -le -1 ]; then
gnuplot -persist <<-EOFMarker
    plot "countfile.txt" using 1:2 with lines
EOFMarker
else
gnuplot -persist <<-EOFMarker
 
	set term x11 0
	set title 'Ch 0'
	plot "countfile.txt" using 1:2 with lines
	set term x11 1
	set title 'Ch 1'
	plot "countfile.txt" using 1:3 with lines
	set term x11 2
	set title 'Ch 2'

	plot "countfile.txt" using 1:4 with lines
	set term x11 3
	set title 'Ch 3'

	plot "countfile.txt" using 1:5 with lines
	set term x11 4
	set title 'Ch 4'

	plot "countfile.txt" using 1:6 with lines
	set term x11 5
	set title 'Ch 5'

	plot "countfile.txt" using 1:7 with lines
	set term x11 6
	set title 'Ch 6'

	plot "countfile.txt" using 1:8 with lines
	set term x11 7
	set title 'Ch 7'

	plot "countfile.txt" using 1:9 with lines
	set term x11 8
	set title 'Ch 8'

	plot "countfile.txt" using 1:10 with lines
	set term x11 9
	set title 'Ch 9'

	plot "countfile.txt" using 1:11 with lines
	set term x11 10
	set title 'Ch 10'

	plot "countfile.txt" using 1:12 with lines
	set term x11 11
	set title 'Ch 11'

	plot "countfile.txt" using 1:13 with lines
	set term x11 12
	set title 'Ch 12'

	plot "countfile.txt" using 1:14 with lines
	set term x11 13
	set title 'Ch 13'

	plot "countfile.txt" using 1:15 with lines
	set term x11 14
	set title 'Ch 14'

	plot "countfile.txt" using 1:16 with lines
	set term x11 15
	set title 'Ch 15'

	plot "countfile.txt" using 1:17 with lines
	set term x11 16
	set title 'Ch 16'

	plot "countfile.txt" using 1:18 with lines
	set term x11 17
	set title 'Ch 17'

	plot "countfile.txt" using 1:19 with lines
	set term x11 18
	set title 'Ch 18'

	plot "countfile.txt" using 1:20 with lines
	set term x11 19
	set title 'Ch 19'

	plot "countfile.txt" using 1:21 with lines
	set term x11 20
	set title 'Ch 20'

	plot "countfile.txt" using 1:22 with lines
	set term x11 21
	set title 'Ch 21'

	plot "countfile.txt" using 1:23 with lines
	set term x11 22
	set title 'Ch 22'

	plot "countfile.txt" using 1:24 with lines
	set term x11 23
	set title 'Ch 23'

	plot "countfile.txt" using 1:25 with lines
	set term x11 24
	set title 'Ch 24'

	plot "countfile.txt" using 1:26 with lines
	set term x11 25
	set title 'Ch 25'

	plot "countfile.txt" using 1:27 with lines
	set term x11 26
	set title 'Ch 26'

	plot "countfile.txt" using 1:28 with lines
	set term x11 27
	set title 'Ch 27'

	plot "countfile.txt" using 1:29 with lines
	set term x11 28
	set title 'Ch 28'

	plot "countfile.txt" using 1:30 with lines
	set term x11 29
	set title 'Ch 29'

	plot "countfile.txt" using 1:31 with lines
	set term x11 30
	set title 'Ch 30'

	plot "countfile.txt" using 1:32 with lines
	set term x11 31
	set title 'Ch 31'

	plot "countfile.txt" using 1:33 with lines
EOFMarker
fi

rm countfile.txt
rm acq.txt
