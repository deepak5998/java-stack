#!/bin/bash

res= `echo | awk '{ printf "%0.2f ft.", (42/2); }'`
#1sqm=10.76sqft
#1sqft=0.092
#ftarea=2400

l= echo | awk '{ printf "%0.02f\n", (60 / 3.281); }'
b= echo | awk '{ printf "%0.02f\n", (40 / 3.281); }'
Area= echo | awk '{ printf "%0.02f ft.\n", ( (60/ 3.281) * (40 / 3.281) ); }'

#plots=25
#Area=222.95meters
#ac=Area*Area*0.00024711
area= echo | awk '{ printf "%0.4f acres\n", ( (222.95*222.95*0.00024711) ); }'
