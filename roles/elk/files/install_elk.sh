#! /bin/bash

cd /usr/local/src
tar xf logstash-5.1.1.tar.gz -C /usr/local
cd ..
mv $(ls |grep logstash|head -1) logstash
