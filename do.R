do <- function(to.plot,do.area,do.ratio,type,my.concentrations=NULL, my.inhibitors=NULL){
  my.date2.temp = strsplit(my.date,"/")[[1]]
  my.date2 = paste(my.date2.temp[1],my.date2.temp[2],my.date2.temp[3],sep="_")
  files=list.files()
  results_files <- files[grep("results.txt",files)]
  temp <- sapply(X=results_files,function(X){strsplit(X,"_results")[[1]][1]})
  filenames <- names(temp)
  experiment <- as.character(temp)
  to.convert <- 0
  if (!is.na(key.loc)){
    conversion <- read.csv(key.loc,header=F,sep="\t")
    to.convert <- 1
  }
  store = c()
  for (i in 1:length(experiment)){
    d <- read.csv(filenames[i],header=T,sep="\t")
    without.lsm <- strsplit(experiment[i],".lsm")[[1]][1]
    if (to.convert==0){converted <- without.lsm}
    if (to.convert==1){
      converted <- as.character(conversion[which(conversion[,2]==without.lsm),1])
    }
    converted.1 <- strsplit(converted,separator)[[1]][1]
    converted.2 <- strsplit(converted,separator)[[1]][2]
    details <- samples[which(samples$Date==my.date & samples$Well==converted.1),]
    for (j in unique(d$Identifier)){
      d.r = d$Ratio[which(d$Identifier==j)]
      Ratio = NA
      if (length(d.r)>0){
        d.r.g = d.r[which(!is.na(d.r) & d.r!=0)]
        Ratio = sum(d.r.g)/length(which(d.r.g>0))
      }
      d.a = d$Area[which(d$Identifier==j)]
      Area = NA
      if (length(d.a)>0){
        d.a.g = d.a[which(!is.na(d.a) & d.a!=0)]
        Area = sum(d.a.g)/length(which(d.a.g>0))
      }
      this = cbind(details,Ratio,Area,converted.1,converted.2,type)
      store = rbind(store,this)
    }
  }
  for (k in unique(store$Plate)){
    write.table(store[which(store$Plate==k),],paste(output,k,"_","store_",my.date2,additional,".txt",sep=""),quote=F,row.names=F,col.names=T)
  }
  for.title <- paste(unique(as.character(store$Date)),additional,sep="\n")
  #browser()
  if (!is.null(my.concentrations)) {
    store$Concentration <- factor(store$Concentration, ordered=TRUE,levels=my.concentrations)
  }
  if (!is.null(my.inhibitors)) {
    store$Inhibitor <- factor(store$Inhibitor, ordered=TRUE,levels=my.inhibitors)
  }
  store <- store[order(store$Inhibitor,store$Concentration),]
  my.x <- paste(store$Type,store$Inhibitor,store$Concentration,store$Buffer)
  if (to.plot==1){
    for (k in unique(store$Plate)){
      pdf(paste(output,k,"_",my.date2,additional,".pdf",sep=""),width=10)
      par(mar=c(10, 4, 4, 2) + 0.1)      
      this.plate <- store[which(store$Plate==k),]
      #if (is.null(my.concentrations)) {
      this.plate.x <- as.character(my.x[which(store$Plate==k)])
      #} else {
        #this.plate.x <- factor(as.character(my.x[which(store$Plate==k)]),ordered=TRUE,levels=sprintf('Human DPI %s Duchen',my.concentrations))
      #}
      if (do.area==1){
        my.y.lab="Area"
        stripchart(this.plate$Area ~ this.plate.x,vertical=T,method="jitter",main=paste(k,"_",my.date2,additional,sep=""),ylab=my.y.lab,las=2,cex.axis=0.5)
        boxplot(this.plate$Area ~ this.plate.x,add=T,outline=F,names=rep("",length(unique(this.plate.x))),axes=F)
      }
      
      if (do.ratio==1){
        my.y.lab="Ratio"
        stripchart(this.plate$Ratio ~ this.plate.x,vertical=T,method="jitter",main=paste(k,"_",my.date2,additional,sep=""),ylab=my.y.lab,las=2,cex.axis=0.5)
        boxplot(this.plate$Ratio ~ this.plate.x,add=T,outline=F,names=rep("",length(unique(this.plate.x))),axes=F)
      }
      dev.off()
    }
  }
  
  if (do.area==1){
    for (k in unique(store$Plate)){
      this.plate = store[which(store$Plate==k),]
      this.plate.x = as.factor(as.character(my.x[which(store$Plate==k)]))
      this.y <- this.plate$Area
      out.dir = paste(output,k,"_","pvalues_area_",my.date2,additional,".csv",sep="")
      identifier = cbind(paste("file:","area_",my.date2,additional,"_",k,sep=""),"","","","")
      statistics(this.plate.x,this.y,identifier,out.dir)
    }
  }
  
  if (do.ratio==1){
    for (k in unique(store$Plate)){
      this.plate = store[which(store$Plate==k),]
      this.plax = as.factor(as.character(my.x[which(store$Plate==k)]))
      this.y <- this.plate$Ratio
      out.dir = paste(output,k,"_","pvalues_ratio_",my.date2,additional,".csv",sep="")
      identifier = cbind(paste("file:","ratio_",my.date2,additional,"_",k,sep=""),"","","","")
      statistics(this.plate.x,this.y,identifier,out.dir)
    }
  }
}
