#!/bin/bash 


echo ----------------------------------------------
echo --------------- J U K E B O X ----------------
echo ----------------------------------------------

if [ $# -lt 1 ]
then
	echo "Give the type of music : "
	read y
else
	y=$1
fi

until [ $y == "rock" ] || [ $y == "jazz" ] || [ $y == "pop" ] || [ $y == "hiphop" ]
do 
   echo " This type does not exist. Please enter the correct type: "
   read y
done

rocknames[0]='diamonds'   
rocknames[1]='wake me up when September ends'
rocknames[2]='new divide'
rocknames[3]='in the end'

rocklinks[0]='http://www.youtube.com/watch?v=lWA2pjMjpBs'   
rocklinks[1]='http://www.youtube.com/watch?v=NU9JoFKlaZ0'
rocklinks[2]='http://www.youtube.com/watch?v=ysSxxIqKNN0'
rocklinks[3]='http://www.youtube.com/watch?v=eVTXPUF4Oz4'

jazznames[0]='What You Wont Do For Love'  
jazznames[1]='What a Wonderful World'
jazznames[2]='Hey Laura'
jazznames[3]='I Love the Life I Live'



jazzlinks[0]='http://www.youtube.com/watch?v=hA2M8-csDDg' 
jazzlinks[1]='http://www.youtube.com/watch?v=E2VCwBzGdPM'
jazzlinks[2]='http://www.youtube.com/watch?v=4raKI_VJCVI'
jazzlinks[3]='http://www.youtube.com/watch?v=BrH38Z1dd5Q'

popnames[0]='wake me up'
popnames[1]='love somebody'
popnames[2]='true love'
popnames[3]='let her go'


poplinks[0]='http://www.youtube.com/watch?v=IcrbM1l_Bo'
poplinks[1]='http://www.youtube.com/watch?v=MU8B4XDI3Uw'
poplinks[2]='http://www.youtube.com/watch?v=zsmUOdmm02A'
poplinks[3]='http://www.youtube.com/watch?v=RBumgq5yVrA'
 
hiphopnames[0]='remember the name'
hiphopnames[1]='thats my name'
hiphopnames[2]='lose yorself'
hiphopnames[3]='candyshop'

hiphoplinks[0]='http://www.youtube.com/watch?v=VDvr08sCPOc' 
hiphoplinks[1]='http://www.youtube.com/watch?v=PDDuCBYtAk0'
hiphoplinks[2]='http://www.youtube.com/watch?v=bmXumtgwtak'
hiphoplinks[3]='http://www.youtube.com/watch?v=SRcnnId15BA'




if [ $y == "rock" ]
then
   let x=$RANDOM%4
   echo "playing ${rocknames[x]}"
   sleep 3
   /usr/bin/firefox -new window ${rocklinks[x]}
elif [ $y == "jazz" ]
then
   let x=$RANDOM%4
   echo "playing ${jazznames[x]}"
   sleep 3
   /usr/bin/firefox -new window ${jazzlinks[x]}
elif [ $y == "pop" ]
then
   let x=$RANDOM%4
   echo "playing ${popnames[x]}"
   sleep 3
   /usr/bin/firefox -new window ${poplinks[x]}
else
   let x=$RANDOM%4
   echo "playing ${hiphopnames[x]}"
   sleep 3
   /usr/bin/firefox -new window ${hiphoplinks[x]}
fi


#cheking for the existence of firefox
#dpkg -l | grep -E '^ii' | grep firefox



