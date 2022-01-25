#!/bin/bash
export GST_DEBUG=1

/home/olegbal/gst-meet-master/target/release/gst-meet --verbose \
         --web-socket-url="wss://api.voyager.solar/xmpp-websocket" \
         --xmpp-domain="api.voyager.solar" \
         --nick="translator" \
         --muc-domain="muc.api.voyager.solar" \
         --focus-jid="focus.api.voyager.solar" \
         --room-name="1" \
         --send-pipeline="filesrc location=speech.ogg ! oggdemux ! vorbisdec ! audioconvert ! audioresample ! autoaudiosink"