###t.test for each row
apply_test<-function(d1,d2,adj_method,isLog=T,alternative,paired,var.equal,conf.level){
  d<-cbind(d1,d2)
  data<-apply(d,1,function(di){mytest(v=di,a=ncol(d1),isLog,alternative,paired,var.equal,conf.level)})
  tdata<-data.frame(t(data))
  adj.p<-p.adjust(tdata$p,method = adj_method)
  tdata<-transform(tdata,adjp=adj.p)
  #tdata<-tdata[,-2]
  return(tdata)
}
mytest<-function(v,a,isLog,alternative,paired,var.equal,conf.level){
  x<-v[1:a]
  y<-v[(a+1):length(v)]
  t<-t.test(x,y,alternative=alternative,paired=paired,var.equal=var.equal,conf.level=conf.level)
  if(isLog)
    return(c(log2fc=(mean(y,na.rm = T)-mean(x,na.rm = T)),p=t$p.value))
  else return(c(log2fc=log2(mean(y,na.rm = T)/(mean(x,na.rm = T))),p=t$p.value))
}
