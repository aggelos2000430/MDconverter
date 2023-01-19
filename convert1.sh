#!/bin/bash

# Prompt user for input file
echo "Enter the path to your Markdown file:"
read file

# Prompt user for output format
echo "Enter the desired output format (pdf, ps, or txt):"
read format

# Use groff to convert Markdown to desired format
if [ "$format" == "pdf" ]; then
  groff -mdoc -Tpdf "$file" > "${file%.*}.pdf"
elif [ "$format" == "ps" ]; then
  groff -mdoc -Tps "$file" > "${file%.*}.ps"
else
  groff -mdoc -Tutf8 "$file" > "${file%.*}.txt"
fi

echo "Conversion complete!"

