#!/bin/sh
for f in src/*.svg; do
    echo $f; 
    xmlstarlet ed -N ns=http://www.w3.org/2000/svg -d "//ns:g[contains(@fill,'url(#linearGradient-1)')]" "$f" > "${f%.*}.nobg.svg";
done;