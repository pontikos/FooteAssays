source('do.R')
 
#samples <- read.csv("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/compiled_inhibitors/Chambers_v5.csv")[,1:9]
#samples <- read.table("Chambers_v5_CopyPaste.txt",sep='\t',header=TRUE)[,1:9]
samples <- read.csv("Chambers_v5.csv")

# test
key.loc <- NA
my.date <- "20/03/2013"
additional <- ""
separator="_"
to.plot=TRUE
do.area=TRUE
do.ratio=TRUE
type='normal'
output <- "results/"
do(to.plot=to.plot,do.area=do.area,do.ratio=do.ratio,type=type)

#Vary here
output <- "S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/compiled_inhibitors/results/"

#20/03/13
#Both
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/200313/round3")
key.loc = NA
my.date = "20/03/2013"
additional = ""
separator="_"
do(1,do.area=1,do.ratio=1,type="normal")

#22/03/13
#Area
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/220313/round1/area")
key.loc = NA
my.date = "22/03/2013"
additional = "_round1_area"
separator="_"
do(1,do.area=1,do.ratio=0,type="normal")

#pH
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/220313/round1/pH")
key.loc = NA
my.date = "22/03/2013"
additional = "_round1_pH"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#05/04/13
#Area
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/050413/")
key.loc = NA
my.date = "05/04/2013"
additional = "_area"
separator="\\."
do(1,do.area=1,do.ratio=0,type="normal")

#09/04/13
#Extracellular pH
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/090413/bugs_ph/extracellular bugs")
key.loc = NA
my.date = "09/04/2013"
additional = "_extracellular_pH"
separator="_"
do(1,do.area=0,do.ratio=1,type="extracellular")
#pH
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/090413/bugs_ph")
key.loc = NA
my.date = "09/04/2013"
additional = "_pH"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")
#Area
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/090413/vac")
key.loc = NA
my.date = "09/04/2013"
additional = "_area"
separator="_"
do(1,do.area=1,do.ratio=0,type="normal")

#10/04/13
#Area
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/100413/round3_vac size")
key.loc = NA
my.date = "10/04/2013"
additional = "_round3_area"
separator="-"
do(1,do.area=1,do.ratio=0,type="normal")
#pH
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/100413/round3_pH")
key.loc = NA
my.date = "10/04/2013"
additional = "_round3_pH"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")
#Area
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/100413/round1_vac size")
key.loc = NA
my.date = "10/04/2013"
additional = "_round1_area"
separator="-"
do(1,do.area=1,do.ratio=0,type="normal")
#cytoplasmic pH
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/100413/round1_cyto_ph")
key.loc = NA
my.date = "10/04/2013"
additional = "_cytoplasm"
separator="-"
do(1,do.area=0,do.ratio=1,type="cytoplasm")
#Area
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/100413/final round vac")
key.loc = NA
my.date = "10/04/2013"
additional = "_final_round_area"
separator="-"
do(1,do.area=1,do.ratio=0,type="normal")

#12/04/13
#Area
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/120413/vac size/labelled")
key.loc = NA
my.date = "12/04/2013"
additional = "_area"
separator="-"
do(1,do.area=1,do.ratio=0,type="normal")
#Extracellular pH
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/120413/ph bugs extracell/labelled")
key.loc = NA
my.date = "12/04/2013"
additional = "_extracellular_pH"
separator="-"
do(1,do.area=0,do.ratio=1,type="extracellular-pH")

#19/04/13
#Both
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/190413/vac size and pH")
key.loc = NA
my.date = "19/04/2013"
additional = ""
separator="-"
do(1,do.area=1,do.ratio=1,type="normal")

#22/04/13
#Both
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/220413/Randomised_round1/pH and vac size")
key.loc = "../key.txt"
my.date = "22/04/2013"
additional = "_round1"
separator="-"
do(1,do.area=1,do.ratio=1,type="normal")

#23/04/13
#Both
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/230413/randomised/ph and vac single bugs")
key.loc = "../../key.txt"
my.date = "23/04/2013"
additional = ""
separator="-"
do(1,do.area=1,do.ratio=1,type="normal")

#25/04/13
#Both
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/250413/ph and vac size")
key.loc = NA
my.date = "25/04/2013"
additional = ""
separator="-"
do(1,do.area=1,do.ratio=1,type="normal")

#13/05/13
#Both
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/130513/vac size and bug ph")
key.loc = "../key.txt"
my.date = "13/05/2013"
additional = ""
separator="-"
do(1,do.area=1,do.ratio=1,type="normal")
#Extracellular pH
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/130513/ph extra bugs")
key.loc = NA
my.date = "13/05/2013"
additional = "_extracellular_pH"
separator="-"
do(1,do.area=0,do.ratio=1,type="extracellular")

#05/06/13
#pH
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/050613/pH phag bugs_DOIA")
key.loc = "../key.txt"
my.date = "05/06/2013"
additional = "_pH"
separator=""
do(1,do.area=0,do.ratio=1,type="normal")
#area
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/050613/vac size_DOIA")
key.loc = "../key.txt"
my.date = "05/06/2013"
additional = "_area"
separator=""
do(1,do.area=1,do.ratio=0,type="normal")
#no phagocytosis cytoplasm pH
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/050613/no phag cytoplasm_DOIA")
key.loc = "../key.txt"
my.date = "05/06/2013"
additional = "_no_phagocytosis_cytoplasm_pH"
separator=""
do(1,do.area=0,do.ratio=1,type="cytoplasm-empty")

#19/06/13
#Both
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/190613/pH bug and vac size")
key.loc = NA
my.date = "19/06/2013"
additional = ""
separator="_"
do(1,do.area=1,do.ratio=1,type="normal")
#Cytoplasm pH
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/190613/cytoplasm")
key.loc = NA
my.date = "19/06/2013"
additional = "_cytoplasm_pH"
separator="_"
do(1,do.area=0,do.ratio=1,type="cytoplasm")

#26/06/13
#Both
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/260613")
key.loc = NA
my.date = "26/06/2013"
additional = ""
separator="_"
do(1,do.area=1,do.ratio=1,type="normal")
#Extracellular pH
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/260613/extracellular bugs")
key.loc = NA
my.date = "26/06/2013"
additional = "_extracellular_pH"
separator="_"
do(1,do.area=0,do.ratio=1,type="extracellular")
#Cytoplasm pH
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/260613/cytoplasm pH")
key.loc = NA
my.date = "26/06/2013"
additional = "_cytoplasm_pH"
separator="_"
do(1,do.area=0,do.ratio=1,type="cytoplasm")

#15/07/13
#Tony pH
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/150713/pH")
key.loc = "../key.txt"
my.date = "15/07/2013"
additional = "_Tony_pH"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")
#Olivia both
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/150713/Vac size and pH")
key.loc = "../key.txt"
my.date = "15/07/2013"
additional = "_Olivia"
separator="_"
do(1,do.area=1,do.ratio=1,type="normal")

#02/08/13
#Olivia both
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/020813/Olivia_quant")
key.loc = NA
my.date = "02/08/2013"
additional = "_Olivia"
separator="-"
do(1,do.area=1,do.ratio=1,type="normal")
#Tony pH
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/020813")
key.loc = NA
my.date = "02/08/2013"
additional = "_Tony_pH"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")
#Cytoplasm pH
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/020813/cytoplasm ph")
key.loc = NA
my.date = "02/08/2013"
additional = "_cytoplasm_pH"
separator="-"
do(1,do.area=0,do.ratio=1,type="cytoplasm")
#Olivia pH rounds 3 and 4
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/020813/Olivia_quant/copy_rounds_3_4")
key.loc = NA
my.date = "02/08/2013"
additional = "_Olivia_r3_r4"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")

#13/08/13
#pH
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/130813/results/")
key.loc = "../key2.txt"
my.date = "13/08/2013"
additional = "_pH"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")

#14/08/13
#pH
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/140813")
key.loc = NA
my.date = "14/08/2013"
additional = "_Olivia_pH"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")

#20/08/13
#pH
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/200813/all_here_copies")
key.loc = NA
my.date = "20/08/2013"
additional = "_pH"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")

#27/08/13
#pH
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/270813/all_here_copies")
key.loc = NA
my.date = "27/08/2013"
additional = "_pH"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")

#11/09/13
#pH
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/110913")
key.loc = NA
my.date = "11/09/2013"
additional = "_pH"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")

#16/09/13
#Tony
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/160913/Tony")
key.loc = NA
my.date = "16/09/2013"
additional = "_area"
separator="-"
do(1,do.area=1,do.ratio=0,type="normal")

#16/09/13
#Penny
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/160913/Penny")
key.loc = NA
my.date = "16/09/2013"
additional = "_pH"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")


#24/09/13
#Tony
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/240913/Tony")
key.loc = NA
my.date = "24/09/2013"
additional = "_pH"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")

#24/09/13
#Tony area
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/240913/Tony areas")
key.loc = NA
my.date = "24/09/2013"
additional = "_area_latex"
separator="-"
do(1,do.area=1,do.ratio=0,type="normal")

#25/09/13
#Tony latex area
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/250913/Blinded_Latex")
key.loc = "../DO_NOT_LOOK_key.txt"
my.date = "25/09/2013"
additional = "_area_latex"
separator="-"
do(1,do.area=1,do.ratio=0,type="normal")

#25/09/13
#Penny Candida pH
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/250913/Blinded_Candida")
key.loc = "../DO_NOT_LOOK_key.txt"
my.date = "25/09/2013"
additional = "_pH"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")

#30/09/13
#Penny
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/300913/")
key.loc = NA
my.date = "30/09/2013"
additional = "_pH"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")

#30/09/13
#Sabrina area
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/300913/Sabrina_area")
key.loc = NA
my.date = "30/09/2013"
additional = "_area"
separator="-"
do(1,do.area=1,do.ratio=0,type="normal")

#21/06/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/210613/")
key.loc = NA
my.date = "21/06/2013"
additional = "_pH"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#12/04/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/120413/vac pH")
key.loc = NA
my.date = "12/04/2013"
additional = "_pH"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")

#02/10/13
#Olivia
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/021013/olivia")
key.loc = NA
my.date = "02/10/2013"
additional = "_Olivia"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#02/10/13
#Tony
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/021013/Tony")
key.loc = NA
my.date = "02/10/2013"
additional = "_Tony"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#07/10/13
#Tony
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/071013/Tony/1")
key.loc = NA
my.date = "07/10/2013"
additional = "_Tony_1"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#07/10/13
#Tony
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/071013/Tony/2")
key.loc = NA
my.date = "07/10/2013"
additional = "_Tony_2"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#Penny
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/071013")
key.loc = NA
my.date = "07/10/2013"
additional = "_Penny"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#Round 2
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/071013/Tony/")
key.loc = NA
my.date = "07/10/2013"
additional = "_Tony_12"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#Sabrina area
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/071013/Sabrina_area/")
key.loc = NA
my.date = "07/10/2013"
additional = "_Sabrina_area"
separator="_"
do(1,do.area=1,do.ratio=0,type="normal")

#10/10/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/101013/")
key.loc = NA
my.date = "10/10/2013"
additional = ""
separator = "-"
do(1,do.area=0,do.ratio=1,type="normal")

#16/10/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/161013/results")
key.loc = NA
my.date = "16/10/2013"
additional = ""
separator = "-"
do(1,do.area=0,do.ratio=1,type="normal")

#22/10/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/221013")
key.loc = NA
my.date = "22/10/2013"
additional = ""
separator = "_"
do(1,do.area=0,do.ratio=1,type="normal")

setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/221013/cytosol")
key.loc = NA
my.date = "22/10/2013"
additional = "_cytoplasm"
separator = "_"
do(1,do.area=0,do.ratio=1,type="cytoplasm")

#23/10/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/231013")
key.loc = NA
my.date = "23/10/2013"
additional = ""
separator = "_"
do(1,do.area=0,do.ratio=1,type="normal")

#29/10/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/291013/area")
key.loc = NA
my.date = "29/10/2013"
additional = "_area_latex"
separator = "_"
do(1,do.area=1,do.ratio=0,type="normal")

setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/291013/pH")
key.loc = NA
my.date = "29/10/2013"
additional = "_pH"
separator = "_"
do(1,do.area=0,do.ratio=1,type="normal")

setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/291013/cell peripheries")
key.loc = NA
my.date = "29/10/2013"
additional = "_total_area"
separator = "_"
do(1,do.area=1,do.ratio=0,type="normal")

setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/291013/General areas")
key.loc = NA
my.date = "29/10/2013"
additional = "_area_nonphagocytosed"
separator = "_"
do(1,do.area=1,do.ratio=0,type="normal")

#30/10/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/301013/")
key.loc = NA
my.date = "30/10/2013"
additional = ""
separator = "_"
do(1,do.area=0,do.ratio=1,type="normal")

#28/10/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/281013/")
key.loc = NA
my.date = "28/10/2013"
additional = ""
separator = "_"
do(1,do.area=0,do.ratio=1,type="normal")

#07/11/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/061113/Tony/")
key.loc = NA
my.date = "06/11/2013"
additional = ""
separator = "_"
do(1,do.area=1,do.ratio=0,type="normal")

#15/10/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/151013")
key.loc = NA
my.date = "15/10/2013"
additional = ""
separator = "_"
do(1,do.area=0,do.ratio=1,type="normal")

#11/11/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/111113/Tony 111113")
key.loc = NA
my.date = "11/11/2013"
additional = ""
separator = "_"
do(1,do.area=1,do.ratio=0,type="normal")

#Candida areas
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/111113/Tony_Candida_area")
key.loc = NA
my.date = "11/11/2013"
additional = "_Tony_Candida_area"
separator = "_"
do(1,do.area=1,do.ratio=0,type="normal")

#Sabrina
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/111113/sabrina")
key.loc = NA
my.date = "11/11/2013"
additional = "_Sabrina_area"
separator = "_"
do(1,do.area=1,do.ratio=0,type="normal")

#Candida pH
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/111113/Tony_Candida_pH")
key.loc = NA
my.date = "11/11/2013"
additional = "_Tony_Candida_pH"
separator = "_"
do(1,do.area=0,do.ratio=1,type="normal")



#12/11/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/121113")
key.loc = NA
my.date = "12/11/2013"
additional = ""
separator = "_"
do(1,do.area=1,do.ratio=0,type="normal")

#12/11/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/121113/Tony_Candida_area")
key.loc = NA
my.date = "12/11/2013"
additional = "_Tony_Candida_area"
separator = "_"
do(1,do.area=1,do.ratio=0,type="normal")

#12/11/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/121113/Tony_Candida_pH")
key.loc = NA
my.date = "12/11/2013"
additional = "_Tony_Candida_pH"
separator = "_"
do(1,do.area=0,do.ratio=1,type="normal")

#04/11/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/041113/snapshots")
key.loc = NA
my.date = "04/11/2013"
additional = ""
separator = "-"
do(1,do.area=0,do.ratio=1,type="normal")

#13/11/13
#Olivia
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/131113/vac size/latex")
key.loc = NA
my.date = "13/11/2013"
additional = "_Tony_latex_vacuole_size"
separator = "_"
do(1,do.area=1,do.ratio=0,type="normal")

#23/09/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/230913/")
key.loc = NA
my.date = "23/09/2013"
additional = "_pH"
separator = "_"
do(1,do.area=0,do.ratio=1,type="normal")

#11/09/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/110913/Sabrina_area")
key.loc = NA
my.date = "11/09/2013"
additional = "_Sabrina_area"
separator = "-"
do(1,do.area=1,do.ratio=0,type="normal")

#19/11/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/191113/Tony pH")
key.loc = NA
my.date = "19/11/2013"
additional = "_Tony_pH"
separator = "_"
do(1,do.area=0,do.ratio=1,type="normal")

#19/11/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/191113/Tony areas")
key.loc = NA
my.date = "19/11/2013"
additional = "_Tony_area"
separator = "_"
do(1,do.area=1,do.ratio=0,type="normal")

#19/11/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/191113/Sabrina_area")
key.loc = NA
my.date = "19/11/2013"
additional = "_Sabrina_Candida_area"
separator = "_"
do(1,do.area=1,do.ratio=0,type="normal")
#18/11/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/181113/Sabrina")
key.loc = NA
my.date = "18/11/2013"
additional = "_Sabrina"
separator = "_"
do(1,do.area=0,do.ratio=1,type="normal")

#20/11/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/201113/")
key.loc = NA
my.date = "20/11/2013"
additional = "_Tony_pH"
separator = "_"
do(1,do.area=0,do.ratio=1,type="normal")

#18/11/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/181113/Sabrina's area")
key.loc = NA
my.date = "18/11/2013"
additional = "_Sabrina_area"
separator = "_"
do(1,do.area=1,do.ratio=0,type="normal")

#22/11/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/221113/sabrina")
key.loc = NA
my.date = "22/11/2013"
additional = "_Sabrina_pH"
separator = "_"
do(1,do.area=0,do.ratio=1,type="normal")

#22/11/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/221113/olivia")
key.loc = NA
my.date = "22/11/2013"
additional = "_Olivia_pH_round_2"
separator = "_"
do(1,do.area=0,do.ratio=1,type="normal")

#27/11/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/271113/8 well plate")
key.loc = NA
my.date = "27/11/2013"
additional = ""
separator = "_"
do(1,do.area=0,do.ratio=1,type="normal")

#27/11/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/271113/8 well plate/Sabrina_cytoplasm")
key.loc = NA
my.date = "27/11/2013"
additional = "_cytoplasm"
separator = "_"
do(1,do.area=0,do.ratio=1,type="normal")


#21/06/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/210613/Sabrina_cytoplasm")
key.loc = NA
my.date = "21/06/2013"
additional = "_cytoplasm"
separator = "_"
do(1,do.area=0,do.ratio=1,type="normal")


#03/12/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/031213/")
key.loc = NA
my.date = "03/12/2013"
additional = ""
separator = "_"
do(1,do.area=0,do.ratio=1,type="normal")

#03/12/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/031213/Sabrina_cytoplasm")
key.loc = NA
my.date = "03/12/2013"
additional = "_cytoplasm"
separator = "_"
do(1,do.area=0,do.ratio=1,type="normal")

#04/12/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/041213/")
key.loc = NA
my.date = "04/12/2013"
additional = ""
separator = "_"
do(1,do.area=0,do.ratio=1,type="normal")

#09/12/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/091213/well")
key.loc = NA
my.date = "09/12/2013"
additional = ""
separator = "_"
do(1,do.area=0,do.ratio=1,type="normal")

#19/06/13 Sabrina
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/190613/sabrina")
key.loc = NA
my.date = "19/06/2013"
additional = "_Sabrina"
separator = "_"
do(1,do.area=0,do.ratio=1,type="normal")

#10/10/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/101013/vac area/")
key.loc = NA
my.date = "10/10/2013"
additional = "_Area"
separator = "-"
do(1,do.area=1,do.ratio=0,type="normal")


#25/09/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/250913/vac area/")
key.loc = NA
my.date = "25/09/2013"
additional = "_Area"
separator = "-"
do(1,do.area=1,do.ratio=0,type="normal")

#27/08/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/270813/vac size")
key.loc = NA
my.date = "27/08/2013"
additional = "_Area"
separator="-"
do(1,do.area=1,do.ratio=0,type="normal")

#08/01/14
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/080114/Tony")
key.loc = NA
my.date = "08/01/2014"
additional = "_Tony"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")

setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/080114/Combined")
key.loc = NA
my.date = "08/01/2014"
additional = "_Combined"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")

setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/080114/janne")
key.loc = NA
my.date = "08/01/2014"
additional = "_Janne"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")

setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/080114/Sabrina")
key.loc = NA
my.date = "08/01/2014"
additional = "_Sabrina"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")

setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/080114/Tony4")
key.loc = NA
my.date = "08/01/2014"
additional = "_Tony4"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")

#24/09/13

setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/240913/Janne_latex")
key.loc = NA
my.date = "24/09/2013"
additional = "_Janne_latex"
separator="-"
do(1,do.area=1,do.ratio=0,type="normal")

#17/01/14
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/170114/Sabrina")
key.loc = NA
my.date = "17/01/2014"
additional = "_Sabrina"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")

#24/09/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/240913/Janne_Candida")
key.loc = NA
my.date = "24/09/2013"
additional = "_Janne_cytoplasm"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")

#24/09/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/240913/Tony Candida Area")
key.loc = NA
my.date = "24/09/2013"
additional = "_Tony_Candida_Area"
separator="-"
do(1,do.area=1,do.ratio=0,type="normal")

#25/09/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/250913/Candida/Janne cytoplasm")
key.loc = NA
my.date = "25/09/2013"
additional = "_Janne_cytoplasm"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")

#25/09/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/250913/Candida/Tony Candida areas")
key.loc = NA
my.date = "25/09/2013"
additional = "_Tony_Candida_Area"
separator="-"
do(1,do.area=1,do.ratio=0,type="normal")



#17/02/14
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/170214/Tony pH")
key.loc = NA
my.date = "17/02/2014"
additional = "_Tony"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#17/02/14
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/170214/Sabrina")
key.loc = NA
my.date = "17/02/2014"
additional = "_Sabrina"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")


#08/01/14
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/080114/Sabrina_area")
key.loc = NA
my.date = "08/01/2014"
additional = "_Sabrina_area"
separator="-"
do(1,do.area=1,do.ratio=0,type="normal")


#26/02/14
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/260214/quantitation")
key.loc = NA
my.date = "26/02/2014"
additional = ""
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#03/03/14
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/030314/Sabrina")
key.loc = NA
my.date = "03/03/2014"
additional = ""
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#17/03/14
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/170314/Tony_pH")
key.loc = NA
my.date = "17/03/2014"
additional = ""
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")


#17/03/14
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/170314/sabrina_cytoplasm")
key.loc = NA
my.date = "17/03/2014"
additional = "_cytoplasm"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")


#31/03/14
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/310314")
key.loc = NA
my.date = "31/03/2014"
additional = ""
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")


#31/03/14
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/310314/cytoplasm")
key.loc = NA
my.date = "31/03/2014"
additional = "_cytoplasm"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")


#31/03/14
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/010414")
key.loc = NA
my.date = "01/04/2014"
additional = ""
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")



#07/04/14
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/070414")
key.loc = NA
my.date = "07/04/2014"
additional = ""
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")


s
#15/04/14
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/150414/sabrina")
key.loc = NA
my.date = "15/04/2014"
additional = ""
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")


#28/04/14
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/280414")
key.loc = NA
my.date = "28/04/2014"
additional = ""
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")


#08/05/14 Tony area
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/080514/Tony area")
key.loc = NA
my.date = "08/05/2014"
additional = "_Tony_area"
separator="-"
do(1,do.area=1,do.ratio=0,type="normal")


#08/05/14 Tony pH
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/080514/Tony pH")
key.loc = NA
my.date = "08/05/2014"
additional = "_Tony_pH"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")


#08/05/14 Janne cytoplasm pH
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/080514/Janne cytoplasm pH")
key.loc = NA
my.date = "08/05/2014"
additional = "_Janne_cytoplasm_pH"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")

#08/05/14 Sabrina pH
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/080514/Sabrina pH")
key.loc = NA
my.date = "08/05/2014"
additional = "_Sabrina_pH"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")


#08/05/14 Sabrina and Tony combined pH
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/080514/Sabrina_Tony_combined")
key.loc = NA
my.date = "08/05/2014"
additional = "_Sabrina_Tony_pH"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")

setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/080514/Janne cytoplasm pH no bug")
key.loc = NA
my.date = "08/05/2014"
additional = "_Janne_cytoplasm_no_bug_pH"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")

setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/080514/Janne cytoplasm pH with bug")
key.loc = NA
my.date = "08/05/2014"
additional = "_Janne_cytoplasm_bug_pH"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")

#29/05/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/290514/Tony pH")
key.loc = NA
my.date = "29/05/2014"
additional = "_Tony_pH"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")


#29/05/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/290514/sabrina pH")
key.loc = NA
my.date = "29/05/2014"
additional = "_Sabrina_pH"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")



#30/05/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/300514/sabrina pH")
key.loc = NA
my.date = "30/05/2014"
additional = "_Sabrina_pH"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")


#23/06/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/230614/Sabrina_pH_renamed")
key.loc = NA
my.date = "23/06/2014"
additional = "_Sabrina_pH"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")


#04/07/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/040714/Sabrina pH")
key.loc = NA
my.date = "04/07/2014"
additional = "_Sabrina_vacuolar_pH"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")


#04/07/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/040714/Sabrina cytosol pH")
key.loc = NA
my.date = "04/07/2014"
additional = "_Sabrina_cytosol_pH"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")

#17/07/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/170714/Tony vacuoles")
key.loc = NA
my.date = "17/07/2014"
additional = "_Tony_vacuolar_pH-3"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")


#17/07/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/170714/Tony vacuoles/4.1_8.1")
key.loc = NA
my.date = "17/07/2014"
additional = "_Tony_vacuolar_pH_4-1_8-1_only"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#17/07/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/170714/cytosol")
key.loc = NA
my.date = "17/07/2014"
additional = "_cytosol"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")


#21/07/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/210714/vacuolar_pH")
key.loc = NA
my.date = "21/07/2014"
additional = ""
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")


#21/07/2014_plate2
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/210714/plate2_vacuolarpH")
key.loc = NA
my.date = "21/07/2014"
additional = "_plate2"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")


#28/05/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/280514/Sabrina pH")
key.loc = NA
my.date = "28/05/2014"
additional = ""
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")


#03/06/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/030614/sabrina pH")
key.loc = NA
my.date = "03/06/2014"
additional = ""
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#18/08/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/180814/Tony pH")
key.loc = NA
my.date = "18/08/2014"
additional = "_more"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")

#18/08/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/180814/Tony volumes")
key.loc = NA
my.date = "18/08/2014"
additional = "_area"
separator="-"
do(1,do.area=1,do.ratio=0,type="normal")


#18/08/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/180814/Sabrinas Cytosol")
key.loc = NA
my.date = "18/08/2014"
additional = "_Sabrina_cytosol"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")

#18/08/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/180814/Sabrinas Cytosol/time_4")
key.loc = NA
my.date = "18/08/2014"
additional = "_Sabrina_cytosol_time_4"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")

#18/08/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/180814/Sabrinas Cytosol/time_5")
key.loc = NA
my.date = "18/08/2014"
additional = "_Sabrina_cytosol_time_5"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")




#18/08/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/180814/to_plot_cytosol")
key.loc = NA
my.date = "18/08/2014"
additional = "_all_cytosol"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")


#18/08/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/180814/to_plot_vacuole")
key.loc = NA
my.date = "18/08/2014"
additional = "_all_vacuole"
separator="-"
do(1,do.area=0,do.ratio=1,type="normal")




#18/08/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/180814/Tony volumes/time1")
key.loc = NA
my.date = "18/08/2014"
additional = "_area_time1"
separator="-"
do(1,do.area=1,do.ratio=0,type="normal")

#18/08/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/180814/Tony volumes/time2")
key.loc = NA
my.date = "18/08/2014"
additional = "_area_time2"
separator="-"
do(1,do.area=1,do.ratio=0,type="normal")



#18/08/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/180814/Tony volumes/time3")
key.loc = NA
my.date = "18/08/2014"
additional = "_area_time3"
separator="-"
do(1,do.area=1,do.ratio=0,type="normal")


#18/08/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/180814/Tony volumes/time4")
key.loc = NA
my.date = "18/08/2014"
additional = "_area_time4"
separator="-"
do(1,do.area=1,do.ratio=0,type="normal")

#18/08/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/180814/Tony volumes/time5")
key.loc = NA
my.date = "18/08/2014"
additional = "_area_time5"
separator="-"
do(1,do.area=1,do.ratio=0,type="normal")

#19/09/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/190914/Sabrina pH")
key.loc = NA
my.date = "19/09/2014"
additional = ""
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")


#07/10/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/071014/Juliet pH")
key.loc = NA
my.date = "07/10/2014"
additional = ""
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#07/10/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/071014/Juliet area")
key.loc = NA
my.date = "07/10/2014"
additional = "_area_time5"
separator="_"
do(1,do.area=1,do.ratio=0,type="normal")


#11/11/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/111114/Juliet pH")
key.loc = NA
my.date = "11/11/2014"
additional = ""
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#22/08/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/220814/Janne pH")
key.loc = NA
my.date = "22/08/2014"
additional = ""
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#05/12/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/051214/together")
key.loc = NA
my.date = "05/12/2014"
additional = ""
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#28/01/2015
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/280115/Juliet pH")
key.loc = NA
my.date = "28/01/2015"
additional = ""
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#02/02/2015
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/020215/Tony")
key.loc = NA
my.date = "02/02/2015"
additional = ""
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#11/12/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/111214/Sabrina pH")
key.loc = NA
my.date = "11/12/2014"
additional = ""
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#12/12/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/121214/Sabrina_pH")
key.loc = NA
my.date = "12/12/2014"
additional = ""
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#17/09/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/170914/Juliet pH")
key.loc = NA
my.date = "17/09/2014"
additional = ""
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#22/01/2015
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/220115/Juliet pH")
key.loc = NA
my.date = "22/01/2015"
additional = ""
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#17/02/2015
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/170215/Tony pH")
key.loc = NA
my.date = "17/02/2015"
additional = ""
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#25/02/2015
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/250215/Sabrina_pH")
key.loc = NA
my.date = "25/02/2015"
additional = ""
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#05/12/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/051214/together")
key.loc = NA
my.date = "05/12/2014"
additional = ""
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#23/04/2013
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/230413/Juliet pH")
key.loc = NA
my.date = "23/04/2013"
additional = ""
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#03/03/2015
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/030315/Juliet pH")
key.loc = NA
my.date = "03/03/2015"
additional = ""
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")


#17/03/2015_2
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/17032015_2/Juliet pH")
key.loc = NA
my.date = "17/03/2015_2"
additional = ""
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#03/03/2015_2
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/030315_2/Juliet pH")
key.loc = NA
my.date = "03/03/2015_2"
additional = "_pH"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#03/03/2015_2
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/030315_2/Juliet area")
key.loc = NA
my.date = "03/03/2015_2"
additional = "_area"
separator="_"
do(1,do.area=1,do.ratio=0,type="normal")

#26/03/2015
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/260315/Juliet pH")
key.loc = NA
my.date = "26/03/2015"
additional = "_pH"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#26/03/2015
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/260315/Juliet pH round 2")
key.loc = NA
my.date = "26/03/2015"
additional = "_pHround2"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#26/03/2015
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/260315/Juliet area")
key.loc = NA
my.date = "26/03/2015"
additional = "_area"
separator="_"
do(1,do.area=1,do.ratio=0,type="normal")

#17/04/2015
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/170415/Juliet pH")
key.loc = NA
my.date = "17/04/2015"
additional = "_pH"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#03/03/2015
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/030315/Juliet pH")
key.loc = NA
my.date = "03/03/2015"
additional = "combinedDPI"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#22/04/2015
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/220415/Sabrina_pH")
key.loc = NA
my.date = "22/04/2015"
additional = "_pH"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#22/04/2015
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/220415/Sabrina_area")
key.loc = NA
my.date = "22/04/2015"
additional = "_area"
separator="_"
do(1,do.area=1,do.ratio=0,type="normal")

#29/05/2014
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/290514/Juliet area")
key.loc = NA
my.date = "29/05/2014"
additional = "_area"
separator="_"
do(1,do.area=1,do.ratio=0,type="normal")

#31/03/2015_2
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/310315_2/Juliet pH")
key.loc = NA
my.date = "31/03/2015_2"
additional = "_pH"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#06/05/2015
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/060515/Juliet pH")
key.loc = NA
my.date = "06/05/2015"
additional = "_pH"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#31/03/2015_2
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/310315_2/Juliet area")
key.loc = NA
my.date = "31/03/2015_2"
additional = "_area"
separator="_"
do(1,do.area=1,do.ratio=0,type="normal")

#06/05/2015
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/060515/Tony volumes")
key.loc = NA
my.date = "06/05/2015"
additional = "_area"
separator="_"
do(1,do.area=1,do.ratio=0,type="normal")

#11/05/2015
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/110515/Juliet pH")
key.loc = NA
my.date = "11/05/2015"
additional = "_pHround2"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#14/05/2015
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/140515/Juliet pH")
key.loc = NA
my.date = "14/05/2015"
additional = "_pH"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#21/05/2015
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/210515/Juliet pH")
key.loc = NA
my.date = "21/05/2015"
additional = "_chloride_inhibitors_pH"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal",my.concentrations=NULL)

#26/05/2015
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/260515/JulietpH")
key.loc = NA
my.date = "26/05/2015"
additional = "_pHcombinedDPI"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal",my.concentrations=c('0nM', '5nM', '39nM', '50nM', '78nM', '100nM', '156nM', '312.5nM', '500nM', '625nM', '1uM', '2.5uM', '5uM'))

#06/03/2015_2
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/060315_2/Juliet pH")
key.loc = NA
my.date = "06/03/2015_2"
additional = "pH"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal",my.concentrations=NULL)

#09/06/2015
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/090615/Juliet pH")
key.loc = NA
my.date = "09/06/2015"
additional = "pH"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal",my.concentrations=c('0nM','5uM','10uM','20uM','200uM'), my.inhibitors=c('controldmso','CFTR-172','Phloretin','controlEtOH','DPCIB','DIOA'))


#10/06/2015
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/100615/Juliet pH")
key.loc = NA
my.date = "10/06/2015"
additional = "pH"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#09/06/2015
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/090615/Juliet area")
key.loc = NA
my.date = "09/06/2015"
additional = "_area"
separator="_"
do(1,do.area=1,do.ratio=0,type="normal")

#20/08/13
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/200813/WT areas")
key.loc = NA
my.date = "20/08/2013"
additional = "_WTarea"
separator="-"
do(1,do.area=1,do.ratio=0,type="normal")

#02/06/2015
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/020615/Juliet pH")
key.loc = NA
my.date = "02/06/2015"
additional = "pH"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#19/06/2015
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/190615/Juliet pH")
key.loc = NA
my.date = "19/06/2015"
additional = "pH"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#19/06/2015
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/190615/Juliet area")
key.loc = NA
my.date = "19/06/2015"
additional = "area"
separator="_"
do(1,do.area=1,do.ratio=0,type="normal")

#23/06/2015
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/230615/Juliet pH")
key.loc = NA
my.date = "23/06/2015"
additional = "pH"
separator="_"
do(1,do.area=0,do.ratio=1,type="normal")

#23/06/2015
setwd("S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/230615/Juliet area")
key.loc = NA
my.date = "23/06/2015"
additional = "_area"
separator="_"
do(1,do.area=1,do.ratio=0,type="normal")