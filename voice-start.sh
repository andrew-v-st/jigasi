#!/bin/bash
export GST_DEBUG=1

~/gst-meet-master/target/release/gst-meet --verbose \
         --web-socket-url="wss://meetlc.worlderp.com/xmpp-websocket" \
         --xmpp-domain="meetlc.worlderp.com" \
         --nick="translator" \
         --muc-domain="muc.meetlc.worlderp.com" \
         --focus-jid="focus.meetlc.worlderp.com" \
         --room-name="1" \
         --send-pipeline="filesrc location=1.ogg ! oggdemux ! vorbisdec ! audioconvert ! audioresample ! autoaudiosink"