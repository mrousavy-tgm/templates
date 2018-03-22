#!/bin/bash
# Create a new protocol template in the directory one up (..)

echo "Protocol create master v3000"
echo -n "New Protocol name: "
read name
cp -r latex-protocol "../$name"
sed -i "s/PROTOCOL_NAME/$name/g" "../$name/document.tex"

echo -n "Professor's name: "
read profname
sed -i "s/PROFESSOR_NAME/$profname/g" "../$name/document.tex"
