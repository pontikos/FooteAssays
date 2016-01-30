# FooteAssays
Neutrophil phagosomal PH assays

Chambersv5 = a log of the different experiments cataloging in columns the date, plate number, well number in the plate, origin of cells (mouse WT, KO or human), inhibitor if used, concentration of used inhibitor, buffer, and stimulus for phagocytosis. 8 columns all together

LSM file = file containing images of cells taken with the confocal microscope. Contains more information than a jpeg file, for instance, because uses 2 different channels (red and yellow) to image cells because using a SNARF probe in the image to measure the pH by taking a ratio of these two channels

Results.txt file = contains an identifier to differentiate between cells, the ratio or area measurement, and C1 and C2 - the two measurements which give the final pH ratio

The script uses Chambers to find the well condition which relates to the number results file which is the well number

# Running

Make sure samples Chambers_v5 has been read into program with:
```R
samples <- read.csv("Chambers_v5.csv")
```
Then:
```R
source('do.R')
```

Be careful of ```setwd``` command as it changes the working directory.
TODO change code so that path is modified in ```do.R```.

To update changes to FooteAssays

RStudio - Git - Update icon - Shell

A black dialogue box pops up.
Then:
git commit -m `update to code` do.R or `Chambers_v5.csv` Chambers_v5.csv or whatever
Then:
git push

