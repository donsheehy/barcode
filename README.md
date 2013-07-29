# Barcode

This is a little Processing app to draw persistent homology barcodes.
To run it, you will need Processing:

[http://www.processing.org](http://www.processing.org)

Currently, the filename is hardcoded.  Change the file_name variable to load a different file.  Most of the attributes are hardcoded in global constants that appear in the top of the file.  The only exception is the left and right extents of the barcode, which can be edited via the 

## input format
The program assumes that the input file is formatted as set of triples, one per line separated by commas.  Each triple is [dimension, birth, death].  It also recognizes -INF and INF as valid birth and death times respectively.  Several example files are provided.

### Converting from MatLab format
If you have a barcode file formatted in the MatLab format favored by Plex and its relatives, you can convert it to format required by barcode with a ruby script that has been provided.


