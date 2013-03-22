hipchat-cli
===========

Some command line scripts for performing [HipChat][hc] API calls.

./hipchat\_room\_message
-----
Used to send a message to a room.

    cat message.txt | ./hipchat_room_message -t <token> -r 1234 -f "System"


Used to send a message from Jenkins promotion build with formated message by xsltproc

	URL="$(echo "$BUILD_URL" | sed 's/promotion.*//')"
	xsltproc ./jenkins-job.xslt "$URL/api/xml" | ./hipchat_room_message -t <token> -r 1234 -f "System"


[hc]: http://www.hipchat.com	