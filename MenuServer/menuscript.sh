#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

DETAILEDLOCATION="/home/MenuServer/indexFINAL.js"
GENERALLOCATION="/home/MenuServer/indexFINALgeneral.js"
FIXERLOCATION="/home/MenuServer/menujsonfixer.js"

COUNTER=0
while [  $COUNTER -lt 13 ]; do
	month=$(date -d "+$COUNTER day" +%m)
	day=$(date -d "+$COUNTER day" +%d)
	year=$(date -d "+$COUNTER day" +%Y)

	FILE1="/var/www/html/menuoutputdetailed/jmenu_" 
	FILE3="_"
	FILE5="_"
	FILE7="_"
	FILE8="EO"
	FILE9="_"
	FILE10="DI"
	FILE11=".json"

	FILE=$FILE1$month$FILE3$day$FILE5$year$FILE7$FILE8$FILE9$FILE10$FILE11

	if [ ! -f $FILE ]; then

#	menuoutputdetailed
    nodejs $DETAILEDLOCATION $month $day $year NT BR
	nodejs $DETAILEDLOCATION $month $day $year NT LU
	nodejs $DETAILEDLOCATION $month $day $year NT DI

	nodejs $DETAILEDLOCATION $month $day $year CS BR
	nodejs $DETAILEDLOCATION $month $day $year CS LU
	nodejs $DETAILEDLOCATION $month $day $year CS DI

	nodejs $DETAILEDLOCATION $month $day $year CM BR
	nodejs $DETAILEDLOCATION $month $day $year CM LU
	nodejs $DETAILEDLOCATION $month $day $year CM DI

	nodejs $DETAILEDLOCATION $month $day $year PK BR
	nodejs $DETAILEDLOCATION $month $day $year PK LU
	nodejs $DETAILEDLOCATION $month $day $year PK DI

	nodejs $DETAILEDLOCATION $month $day $year EO BR
	nodejs $DETAILEDLOCATION $month $day $year EO LU
	nodejs $DETAILEDLOCATION $month $day $year EO DI



#	menuoutputgeneral
 #    nodejs $GENERALLOCATION $month $day $year NT BR
	# nodejs $GENERALLOCATION $month $day $year NT LU
	# nodejs $GENERALLOCATION $month $day $year NT DI

	# nodejs $GENERALLOCATION $month $day $year CS BR
	# nodejs $GENERALLOCATION $month $day $year CS LU
	# nodejs $GENERALLOCATION $month $day $year CS DI

	# nodejs $GENERALLOCATION $month $day $year CM BR
	# nodejs $GENERALLOCATION $month $day $year CM LU
	# nodejs $GENERALLOCATION $month $day $year CM DI

	# nodejs $GENERALLOCATION $month $day $year PK BR
	# nodejs $GENERALLOCATION $month $day $year PK LU
	# nodejs $GENERALLOCATION $month $day $year PK DI

	# nodejs $GENERALLOCATION $month $day $year EO BR
	# nodejs $GENERALLOCATION $month $day $year EO LU
	# nodejs $GENERALLOCATION $month $day $year EO DI



#	Fixer
	# nodejs $FIXERLOCATION $month $day $year NT BR
	# nodejs $FIXERLOCATION $month $day $year NT LU
	# nodejs $FIXERLOCATION $month $day $year NT DI

	# nodejs $FIXERLOCATION $month $day $year CS BR
	# nodejs $FIXERLOCATION $month $day $year CS LU
	# nodejs $FIXERLOCATION $month $day $year CS DI

	# nodejs $FIXERLOCATION $month $day $year CM BR
	# nodejs $FIXERLOCATION $month $day $year CM LU
	# nodejs $FIXERLOCATION $month $day $year CM DI

	# nodejs $FIXERLOCATION $month $day $year PK BR
	# nodejs $FIXERLOCATION $month $day $year PK LU
	# nodejs $FIXERLOCATION $month $day $year PK DI

	# nodejs $FIXERLOCATION $month $day $year EO BR
	# nodejs $FIXERLOCATION $month $day $year EO LU
	# nodejs $FIXERLOCATION $month $day $year EO DI

	fi

	if [ -f $FILE ]; then
		echo $FILE already exists, skipping
	fi

    let COUNTER=COUNTER+1 
done


COUNTER2=0
while [  $COUNTER2 -lt 5 ]; do
	month=$(date -d "-$COUNTER2 day" +%m)
	day=$(date -d "-$COUNTER2 day" +%e)
	year=$(date -d "-$COUNTER2 day" +%Y)

	FILE1="/var/www/html/menuoutputdetailed/jmenu_" 
	FILE3="_"
	FILE5="_"
	FILE7="_"
	FILE8="EO"
	FILE9="_"
	FILE10="DI"
	FILE11=".json"

	FILE=$FILE1$month$FILE3$day$FILE5$year$FILE7$FILE8$FILE9$FILE10$FILE11

	if [ ! -f $FILE ]; then

#	menuoutputdetailed
    nodejs $DETAILEDLOCATION $month $day $year NT BR
	nodejs $DETAILEDLOCATION $month $day $year NT LU
	nodejs $DETAILEDLOCATION $month $day $year NT DI

	nodejs $DETAILEDLOCATION $month $day $year CS BR
	nodejs $DETAILEDLOCATION $month $day $year CS LU
	nodejs $DETAILEDLOCATION $month $day $year CS DI

	nodejs $DETAILEDLOCATION $month $day $year CM BR
	nodejs $DETAILEDLOCATION $month $day $year CM LU
	nodejs $DETAILEDLOCATION $month $day $year CM DI

	nodejs $DETAILEDLOCATION $month $day $year PK BR
	nodejs $DETAILEDLOCATION $month $day $year PK LU
	nodejs $DETAILEDLOCATION $month $day $year PK DI

	nodejs $DETAILEDLOCATION $month $day $year EO BR
	nodejs $DETAILEDLOCATION $month $day $year EO LU
	nodejs $DETAILEDLOCATION $month $day $year EO DI



#	menuoutputgeneral
 #    nodejs $GENERALLOCATION $month $day $year NT BR
	# nodejs $GENERALLOCATION $month $day $year NT LU
	# nodejs $GENERALLOCATION $month $day $year NT DI

	# nodejs $GENERALLOCATION $month $day $year CS BR
	# nodejs $GENERALLOCATION $month $day $year CS LU
	# nodejs $GENERALLOCATION $month $day $year CS DI

	# nodejs $GENERALLOCATION $month $day $year CM BR
	# nodejs $GENERALLOCATION $month $day $year CM LU
	# nodejs $GENERALLOCATION $month $day $year CM DI

	# nodejs $GENERALLOCATION $month $day $year PK BR
	# nodejs $GENERALLOCATION $month $day $year PK LU
	# nodejs $GENERALLOCATION $month $day $year PK DI

	# nodejs $GENERALLOCATION $month $day $year EO BR
	# nodejs $GENERALLOCATION $month $day $year EO LU
	# nodejs $GENERALLOCATION $month $day $year EO DI



#	Fixer
	# nodejs $FIXERLOCATION $month $day $year NT BR
	# nodejs $FIXERLOCATION $month $day $year NT LU
	# nodejs $FIXERLOCATION $month $day $year NT DI

	# nodejs $FIXERLOCATION $month $day $year CS BR
	# nodejs $FIXERLOCATION $month $day $year CS LU
	# nodejs $FIXERLOCATION $month $day $year CS DI

	# nodejs $FIXERLOCATION $month $day $year CM BR
	# nodejs $FIXERLOCATION $month $day $year CM LU
	# nodejs $FIXERLOCATION $month $day $year CM DI

	# nodejs $FIXERLOCATION $month $day $year PK BR
	# nodejs $FIXERLOCATION $month $day $year PK LU
	# nodejs $FIXERLOCATION $month $day $year PK DI

	# nodejs $FIXERLOCATION $month $day $year EO BR
	# nodejs $FIXERLOCATION $month $day $year EO LU
	# nodejs $FIXERLOCATION $month $day $year EO DI

	fi

	if [ -f $FILE ]; then
		echo $FILE already exists, skipping
	fi

    let COUNTER2=COUNTER2+1 
done

