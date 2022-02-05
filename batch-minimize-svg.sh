#!/bin/sh

svgDir="src/icons"
stagingDir="src/staged"

for f in $svgDir/*.svg; do
    filename=`basename $f .svg`
    echo "Processing $filename"

    tmpFile="tmp/$filename.tmp.svg"
    dstFile="src/staged/$filename.svg"

    # Remove the border from the category icons
    xmlstarlet ed --inplace -N ns=http://www.w3.org/2000/svg -d "//ns:rect[contains(@stroke,'#879196')]" $f > $tmpFile

    # Change path from fill white (#FFFFFF) to black (#000000)
    xmlstarlet ed --inplace -N ns=http://www.w3.org/2000/svg -u "//ns:path[contains(@fill,'#FFFFFF')]/@fill" -v "#000000" $tmpFile

    # Change path from fill white (#FFF) to black (#000)
    xmlstarlet ed --inplace -N ns=http://www.w3.org/2000/svg -u "//ns:path[contains(@fill,'#FFF')]/@fill" -v "#000" $tmpFile

    # Change path from fill (#B0084D) (light icons) to black (#000000)
    xmlstarlet ed --inplace -N ns=http://www.w3.org/2000/svg -u "//ns:path[contains(@fill,'#B0084D')]/@fill" -v "#000000" $tmpFile
    
    # Change path from fill (#FF4F8B) (dark icons) to black (#000000)
    xmlstarlet ed --inplace -N ns=http://www.w3.org/2000/svg -u "//ns:path[contains(@fill,'#FF4F8B')]/@fill" -v "#000000" $tmpFile

    # Change path from fill #4D27AA to black (#00000)
    xmlstarlet ed --inplace -N ns=http://www.w3.org/2000/svg -u "//ns:path[contains(@fill,'#4D27AA')]/@fill" -v "#000000" $tmpFile

    # Change path fromfill  #232F3D to black (#00000)
    xmlstarlet ed --inplace -N ns=http://www.w3.org/2000/svg -u "//ns:path[contains(@fill,'#232F3D')]/@fill" -v "#000000" $tmpFile

    # Change from fill  to black (#000000)
    xmlstarlet ed --inplace -N ns=http://www.w3.org/2000/svg -u "//ns:path[contains(@fill,'#D45B07')]/@fill" -v "#000000" $tmpFile

    # Change from fill #3F8624 to black
    xmlstarlet ed --inplace -N ns=http://www.w3.org/2000/svg -u "//ns:path[contains(@fill,'#3F8624')]/@fill" -v "#000000" $tmpFile

    # Change g from white (#FFFFFF) (dark icons) to black (#000000)
    xmlstarlet ed --inplace -N ns=http://www.w3.org/2000/svg -u "//ns:g[contains(@fill,'#FFFFFF')]/@fill" -v "#000000" $tmpFile

    # Change g from white (#FFF) to black (#000000)
    xmlstarlet ed --inplace -N ns=http://www.w3.org/2000/svg -u "//ns:g[contains(@fill,'#FFF')]/@fill" -v "#000" $tmpFile

    # Remove the gradient background
    xmlstarlet ed --inplace -N ns=http://www.w3.org/2000/svg -d "//ns:g[contains(@fill,'url(#linearGradient-1)')]" $tmpFile
    xmlstarlet ed --inplace -N ns=http://www.w3.org/2000/svg -d "//ns:path[contains(@fill,'url(#linearGradient-1)')]" $tmpFile
    xmlstarlet ed --inplace -N ns=http://www.w3.org/2000/svg -d "//ns:linearGradient[contains(@id,'linearGradient-1')]" $tmpFile
    xmlstarlet ed --inplace -N ns=http://www.w3.org/2000/svg -d "//ns:rect[contains(@fill,'url(#linearGradient-1)')]" $tmpFile


    mv $tmpFile $dstFile
done;