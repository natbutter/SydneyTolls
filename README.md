# SydneyTolls
Some python notebooks exploring Sydney Toll Road data.

## Data
I downloaded all the data from here
https://nswtollroaddata.com/data-download/

You can download from here in one go quickly:
https://www.dropbox.com/sh/z1vgkm3pctomisl/AABszp93e0x-Kr1i0CB2wxL5a?dl=0

Put all these files in the data directory. And then run the notebook.

You can download most of the data in one go with Bash doing something like this for each of the Toll Roads:
```
for i in {1..9}; do echo $i;for j in {1..4}; do echo $j; wget https://s3.ap-southeast-2.amazonaws.com/accc-assetdata-prod/data/accc/upload/asset/CCT/CCT_traffic-data_FY201${i}_Q${j}_csv.zip; done; done

#unzip it all
unzip '*.zip'

for i in {9..19}; do echo $i;for j in {1..4}; do echo $j; wget https://s3.ap-southeast-2.amazonaws.com/accc-assetdata-prod/data/accc/upload/asset/M2/M2_traffic-data_FY20${i}_Q${j}_csv.zip; done; done

for i in {0..9}; do echo $i;for j in {1..4}; do echo $j; wget https://s3.ap-southeast-2.amazonaws.com/accc-assetdata-prod/data/accc/upload/asset/LCT/LCT_traffic-data_FY201${i}_Q${j}_csv.zip; done; done

for i in {10..19}; do echo $i;for j in {1..4}; do echo $j; wget https://s3.ap-southeast-2.amazonaws.com/accc-assetdata-prod/data/accc/upload/asset/ED/ED_traffic-data_FY20${i}_Q${j}_csv.zip; done; done


for i in {10..19}; do echo $i;for j in {1..4}; do echo $j; wget https://s3.ap-southeast-2.amazonaws.com/accc-assetdata-prod/data/accc/upload/asset/M7/M7_traffic-data_FY20${i}_Q${j}_csv.zip; done; done
```
##TODO: The M5,this data is laid out a bit different... so the above command needs to be adapted.


## Python Notebooks
The two notebooks look at the data in different ways.
Explore them to find out more.

Key points: 

* There were 2,120,731,776 total trips on sydney Toll roads (not including M5) between 2009 and 2019.
* There is not much traffic on the roads at Christmas time.


