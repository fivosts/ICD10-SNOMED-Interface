input <- read.delim('icd10cm_order_2016.txt', header = TRUE, sep = "\t", quote = "\"",
           dec = ".", fill = TRUE, comment.char = "")  #icd10 is imported as data frame

colnames(input) #column names print
icd10id <- "11001"    ####change here ID

colid <- input[,c("id")]  
coldisease <- input[,c("disease")]

grep(icd10id, colid) #prints address of the found string 
colid[grep(icd10id, colid)] #prints id which includes the digit input string
addressid <- grep(icd10id, colid) #and stores the address to addressid in order to match the disease-description

coldisease[addressid] #print all diseases that match the string id
diseaseid <- coldisease[addressid]

secondfile <- read.delim('sct2_Description_Full-en_INT_20160131.txt', header = TRUE, sep = "\t", quote = "\"",
                    dec = ".", fill = TRUE, comment.char = "")
colnames(secondfile) 
searchterm <- secondfile[,c("term")]
searchid <- secondfile[,c("id")]


for(i in 1:length(diseaseid))
{
d <- diseaseid[i]    
temp <- grep(d,searchterm) 

if(length(temp) > 0){
print(searchid[temp]) 
}
}
