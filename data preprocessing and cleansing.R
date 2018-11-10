#------------------------------------------------------------------
#New_Thyroid
x<-read.table('New Thyroid data.txt',sep=",")

#데이터 설명.
#For Each Attribute: (please give both acronym and full name if both exist)

#Attr. no : 
  
#1: class :	Class attribute (1 = normal, 2 = hyper, 3 = hypo)
#2:	T3 : T3-resin uptake test. (A percentage)
#3:	Tsthyroxin : Total Serum thyroxin as measured by the isotopic displacement method. 
#4: Tstrii :Total serum triiodothyronine as measured by radioimmuno assay.
#5: bTSH : basal thyroid-stimulating hormone (TSH) as measured by radioimmuno assay.
#6: madT : Maximal absolute difference of TSH value after injection of 200 micro grams of thyrotropin-releasing hormone as compared to the basal value.

#All attributes are continuous.

#(Note, there is a slight possibility of having the 
#  attribute numbers mixed up, see [2a] if it matters.)

colnames(x)<-c("class","T3","Tsthyroxin","Tstrii","bTSH","madT")
write.csv(x,'New_Thyroid.csv')


#---------------------------------------------------------------------
#Pima

y<-read.table('Pima data.txt',sep=",")
y

#데이터 설명.
#For Each Attribute: (all numeric-valued)
#1. N.pregnat :Number of times pregnant
#2. Pgc2 : Plasma glucose concentration a 2 hours in an oral glucose tolerance test
#3. Dbp : Diastolic blood pressure (mm Hg)
#4. Tsft(mm) : Triceps skin fold thickness (mm)
#5. insulin : 2-Hour serum insulin (mu U/ml)
#6. Bodymass : Body mass index (weight in kg/(height in m)^2)
#7. Dpf : Diabetes pedigree function
#8. Age : Age (years)
#9. class : Class variable (0 or 1)

colnames(y)<-c("N.pregnat","Pgc2","Dbp","Tsft(mm)","insulin",'Bodymass','Dpf','Age','class')

write.csv(y,'Pima.csv')
