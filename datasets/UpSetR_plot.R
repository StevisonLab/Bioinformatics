#upsetr
library(UpSetR)

#replace numbers in following expression with results from vcf-compare
expressionInput<-c(`Raw` = 1076,`Raw&GATK` = 2298,`Raw&Adjusted` = 324,`Raw&GATK&Adjusted` = 42473)

png(file="Variant_Intersection_UpSet_Plot.png",height=5.5,width=9, res=300,pointsize=9,units="in")
upset(fromExpression(expressionInput),order.by = "degree", mainbar.y.label = "Insersection of PASS Sites", sets.x.label = "No. of PASS Sites", 
      number.angles = 30, point.size = 3, line.size = 1, empty.intersections = "on",shade.color="lightblue", text.scale=c(2,1.5,1.25,0.9,2.5,0.85))
dev.off()


