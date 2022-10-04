# spot-e-fi-dl
Screenshot -> PNG -> OCR -> Playlist



spot-e-fi-dl.sh

this script takes a series of screenshots, using the scrot screenshot utility,
and the xdotool utility to move down in the browser by simulating a down
arrow.

the script assumes a playlist with seven songs per screen, and around 350
songs in the playlist.

the range of the for loop and number of down arrow events will need to be
modified depending on screen height and playlist length


screenshot-cropper-stitcher.sh

this iterates over the screenshots, applying the necessary cropping window

ths cropping window dimensions will need to be modified depending on the
screen size and width, to leave only the desired playlist text for
subsequent OCR which is attempted by the tesseract OCR tool

the cropped screenshots are stitched together vertically by the imagemagick
utility convert, for subsequent OCR by tesseract

it may be worth scaling the screenshots to 300 DPI and inverting the
colours to get black text on white, and fiddling with the brightness
and contrast if tesseract struggles to produce meaningful output during
OCR

it may also pay to convert the song/artist column separately to
the album column, and then combine the texts subsequently in a
spreadsheet etc...
