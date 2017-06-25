# ICD10-SNOMED-Interface

The code of this repository written in R, is an interface between ICD-10 (International Statistical Classification of Diseases and Related Health Problems) and SNOMED medical term classification protocol.

Having two text database files of standard format one for each protocol, this code takes as input both files and a specific ID which matches to a specific disease-keyword according to the ICD-10 protocol.

The program outputs all the SNOMED-ID's that refer to diseases containing the ICD-10 disease-keyword,thus creating a direct mapping between the input ID in ICD-10 protocol and all the SNOMED-ID's that refer to diseases containing the keyword that the input ID refers to.

In the repository, there are provided two sample text files (full SNOMED-sct2 file can be found online), one for each protocol.The code reads them as input.The ICD-10 ID which is mapped is defined inside the code.
