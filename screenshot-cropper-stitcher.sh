#!/bin/bash

# this iterates over the screenshots, applying the necessary cropping window

# ths cropping window dimensions will need to be modified depending on the
# screen size and width, to leave only the desired playlist text
# for subsequent OCR which is attempted by the tesseract OCR tool

for i in s*.png
do
        convert $i -crop 597x390+375+297 cropped-$i.png
done

convert cropped*.png -append vertical-list.png

# it may be worth scaling the screenshots to 300 DPI and inverting the
# colours to get black text on white, and fiddling with the brightness
# and contrast if tesseract struggles to produce meaningful output

# it may also pay to convert the song/artist column separately to
# the album column, and then combine the txt subsequently in a
# spreadshseet etc...

tesseract -l eng vertical-list.png output_from_ocr
