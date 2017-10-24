#!/bin/sh

MP3_PLAYER=/usr/bin/mpg123

FFH_STREAM_URL=http://streams.ffh.de/radioffh/mp3/hqlivestream.m3u
HR3_STREAM_URL=http://metafiles.gl-systemhaus.de/hr/hr3_2.m3u
JUMP_STREAM_URL=http://avw.mdr.de/streams/284320-0_mp3_high.m3u
ANTENNE_STREAM_URL=http://www.antenne.de/webradio/antenne.m3u
BOB_STREAM_URL=http://streams.radiobob.de/bob-live/mp3-128/streams.radiobob.de/play.m3u

case "$1" in
    antenne)
    $MP3_PLAYER -@ $ANTENNE_STREAM_URL    
    ;;
    ffh)
    $MP3_PLAYER -@ $FFH_STREAM_URL
    ;;
    hr3)
    $MP3_PLAYER -@ $HR3_STREAM_URL
    ;;
    jump)
    $MP3_PLAYER -@ $JUMP_STREAM_URL
    ;;
    bob)
    $MP3_PLAYER -@ $BOB_STREAM_URL
    ;;
    *)
    echo "Usage: $0 {antenne|ffh|hr3|jump}"
    exit 1
    ;;
esac

exit 0
