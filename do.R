#Vary here
output <- "S:/Medicine/MOLMED_Neutrophils/Duchen_Neutrophils/compiled_inhibitors/results/"
samples <- read.csv("Chambers_v5.csv")

# to.plot
# do.area
# do.ratio
# type
# my.concentrations
# my.inhibitors
do <- function(base.dir, to.plot, do.area, do.ratio, type, my.concentrations=NULL, my.inhibitors=NULL){
  my.date2.temp <-strsplit(my.date,"/")[[1]]
  my.date2 <-paste(my.date2.temp[1],my.date2.temp[2],my.date2.temp[3],sep="_")
  results_files <- list.files(path=base.dir, pattern='.*results.txt',full.names = TRUE)
  file.prefix <- sapply(X=results_files,function(X){strsplit(X,"_results")[[1]][1]})
  print(filenames <- names(file.prefix))
  print(experiment <- as.character(file.prefix))
  if (!is.na(key.loc)){
    to.convert <- TRUE
  } else {
    to.convert <- FALSE
  }
  #make store
  store <-c()
  for (i in 1:length(experiment)){
    cat('Reading',filenames[i],'...\n')
    print(dim(d <- read.csv(filenames[i],header=T,sep="\t")))
    without.lsm <- strsplit(experiment[i],".lsm")[[1]][1]
    if (to.convert) {
      conversion <- read.csv(key.loc,header=F,sep="\t")
      converted <- as.character(conversion[which(conversion[,2]==without.lsm),1])
    } else {
      converted <- without.lsm
    }
    well <- strsplit(basename(converted),separator)[[1]][1]
    runs <- strsplit(basename(converted),separator)[[1]][2]
    cat('Date',my.date,'well',well,'...\n')
    print(dim(details <- samples[which(samples$Date==my.date & samples$Well==well),]))
    for (j in unique(d$Identifier)){
      d.r <- d$Ratio[which(d$Identifier==j)]
      Ratio <- NA
      if (length(d.r)>0){
        d.r.g = d.r[which(!is.na(d.r) & d.r!=0)]
        Ratio = sum(d.r.g)/length(which(d.r.g>0))
      }
      d.a <- d$Area[which(d$Identifier==j)]
      Area <- NA
      if (length(d.a)>0){
        d.a.g = d.a[which(!is.na(d.a) & d.a!=0)]
        Area = sum(d.a.g)/length(which(d.a.g>0))
      }
      this <- cbind(details,Ratio,Area,well,runs,type)
      store <- rbind(store,this)
    }
  }
  for (k in unique(store$Plate)){
    out <- paste(output,k,"_","store_",my.date2,additional,".txt",sep="")
    write.table(store[which(store$Plate==k),], file=out, quote=F,row.names=F,col.names=T)
  }
  cat('for.title:\n')
  print(for.title <- paste(unique(as.character(store$Date)),additional,sep="\n"))
  if (!is.null(my.concentrations))
    store$Concentration <- factor(store$Concentration, ordered=TRUE,levels=my.concentrations)
  if (!is.null(my.inhibitors))
    store$Inhibitor <- factor(store$Inhibitor, ordered=TRUE,levels=my.inhibitors)
  store <- store[order(store$Inhibitor,store$Concentration),]
  my.x <- paste(store$Type,store$Inhibitor,store$Concentration,store$Buffer)
  if (to.plot){
    for (k in unique(store$Plate)){
      pdf(paste(output,k,"_",my.date2,additional,".pdf",sep=""),width=10)
      par(mar=c(10, 4, 4, 2) + 0.1)      
      this.plate <- store[which(store$Plate==k),]
      #if (is.null(my.concentrations)) {
      this.plate.x <- as.character(my.x[which(store$Plate==k)])
      #} else {
        #this.plate.x <- factor(as.character(my.x[which(store$Plate==k)]),ordered=TRUE,levels=sprintf('Human DPI %s Duchen',my.concentrations))
      #}
      if (do.area){
        stripchart(this.plate$Area ~ this.plate.x,vertical=T,method="jitter",main=paste(k,"_",my.date2,additional,sep=""),ylab="Area",las=2,cex.axis=0.5)
        boxplot(this.plate$Area ~ this.plate.x,add=T,outline=F,names=rep("",length(unique(this.plate.x))),axes=F)
      }
      if (do.ratio){
        stripchart(this.plate$Ratio ~ this.plate.x,vertical=T,method="jitter",main=paste(k,"_",my.date2,additional,sep=""),ylab="Ratio",las=2,cex.axis=0.5)
        boxplot(this.plate$Ratio ~ this.plate.x,add=T,outline=F,names=rep("",length(unique(this.plate.x))),axes=F)
      }
      dev.off()
    }
  }
  
  if (do.area) {
    for (k in unique(store$Plate)){
      this.plate = store[which(store$Plate==k),]
      this.plate.x = as.factor(as.character(my.x[which(store$Plate==k)]))
      this.y <- this.plate$Area
      out.dir = paste(output,k,"_","pvalues_area_",my.date2,additional,".csv",sep="")
      identifier = cbind(paste("file:","area_",my.date2,additional,"_",k,sep=""),"","","","")
      statistics(this.plate.x,this.y,identifier,out.dir)
    }
  }
  
  if (do.ratio) {
    for (k in unique(store$Plate)){
      this.plate = store[which(store$Plate==k),]
      this.plax = as.factor(as.character(my.x[which(store$Plate==k)]))
      this.y <- this.plate$Ratio
      out.dir <- paste(output,k,"_","pvalues_ratio_",my.date2,additional,".csv",sep="")
      identifier = cbind(paste("file:","ratio_",my.date2,additional,"_",k,sep=""),"","","","")
      statistics(this.plate.x,this.y,identifier,out.dir)
    }
  }
}

statistics <- function(my.x,this.y,identifier,out.dir) {
  to.test = combn(unique(as.character(my.x)),2)
  out = c()
  for (i in 1:(length(to.test)/2)){
    g1 = to.test[,i][1]
    g2 = to.test[,i][2]
    a1 = this.y[which(my.x==g1)]
    a1g = a1[!is.nan(a1) & !is.na(a1)]
    a2 = this.y[which(my.x==g2)]
    a2g = a2[!is.nan(a2) & !is.na(a2)]
    if (length(a1g)>1 & length(a2g)>1){
        my.p.wilcox = signif(wilcox.test(x=a1g,y=a2g,exact=F)$p.value,2)
        my.p.t = signif(t.test(x=a1g,y=a2g)$p.value,2)
        a1.mean = round(mean(a1g),2)
        a2.mean = round(mean(a2g),2)
        a1.median = round(median(a1g),2)
        a2.median = round(median(a2g),2)
    }
    if (length(a1g)<2 | length(a2g)<2){
        my.p = NA
        a1.mean = NA
        a2.mean = NA
        a1.median = NA
        a2.median = NA
    }
    now = cbind(g1,g2,a1.mean,a2.mean,a1.median,a2.median,my.p.t,my.p.wilcox)
    out = rbind(out,now)
  }
  out=as.data.frame(out)
  out2 = out[order(as.numeric(as.character(out[,5]))),]
  out3 = out2
  #out3 = out2[which(as.numeric(as.character(out2[,5]))<0.05),]
  names(out3) = c("group_1","group_2","mean_1","mean_2","median_1","median_2","p.t","p.wilcox")
  if (length(which(!is.na(out3$p.wilcox)))>0){
    write.csv(out3,file=out.dir,quote=F,row.names=F)
  }
  write(identifier,file=out.dir,append=T)
}


