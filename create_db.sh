rrdtool create rrds/load.rrd --step 1200 \
   DS:1min:GAUGE:2400:0:300 \
   DS:5min:GAUGE:2400:0:300 \
   DS:15min:GAUGE:2400:0:300 \
   RRA:AVERAGE:0.5:3:2400


rrdtool create rrds/eth.rrd -s 1200 \ DS:rx:GAUGE:2400:U:U \ DS:tx:GAUGE:2400:U:U \
   RRA:AVERAGE:0.5:1:576 \ RRA:AVERAGE:0.5:6:672 \ RRA:AVERAGE:0.5:24:732 \ 
         RRA:AVERAGE:0.5:144:1460

