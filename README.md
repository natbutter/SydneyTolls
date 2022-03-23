# SydneyTolls
Some python notebooks exploring Sydney Toll Road data.

## Data
I downloaded all the data from here
https://nswtollroaddata.com/data-download/

Put all these files in the 'data' directory. And then run the notebooks.

You can download most of the data quickly in one go with Bash doing something like this for each of the Toll Roads:
```
#CCT (2009Q2 - present)
for j in {2..4}; do echo $j; wget https://s3.ap-southeast-2.amazonaws.com/accc-assetdata-prod/data/accc/upload/asset/CCT/CCT_traffic-data_FY2009_Q${j}_csv.zip; done

for i in {10..22}; do echo $i;for j in {1..4}; do echo $j; wget https://s3.ap-southeast-2.amazonaws.com/accc-assetdata-prod/data/accc/upload/asset/CCT/CCT_traffic-data_FY20${i}_Q${j}_csv.zip; done; done

#M2 (2009Q2 - present)
for j in {2..4}; do echo $j; wget https://s3.ap-southeast-2.amazonaws.com/accc-assetdata-prod/data/accc/upload/asset/M2/M2_traffic-data_FY2009_Q${j}_csv.zip; done

for i in {10..22}; do echo $i;for j in {1..4}; do echo $j; wget https://s3.ap-southeast-2.amazonaws.com/accc-assetdata-prod/data/accc/upload/asset/M2/M2_traffic-data_FY20${i}_Q${j}_csv.zip; done; done

#LCT (2010Q3 - present)
for i in {10..22}; do echo $i;for j in {1..4}; do echo $j; wget https://s3.ap-southeast-2.amazonaws.com/accc-assetdata-prod/data/accc/upload/asset/LCT/LCT_traffic-data_FY20${i}_Q${j}_csv.zip; done; done

#ED (2010 - present)
for i in {10..22}; do echo $i;for j in {1..4}; do echo $j; wget https://s3.ap-southeast-2.amazonaws.com/accc-assetdata-prod/data/accc/upload/asset/ED/ED_traffic-data_FY20${i}_Q${j}_csv.zip; done; done

#M4 (2019 - present)
for i in {19..22}; do echo $i;for j in {1..4}; do echo $j; wget https://s3.ap-southeast-2.amazonaws.com/accc-assetdata-prod/data/accc/upload/asset/M4/M4_traffic-data_FY20${i}_Q${j}_csv.zip; done; done

#M7 (2009Q1 - present)
for i in {10..22}; do echo $i;for j in {1..4}; do echo $j; wget https://s3.ap-southeast-2.amazonaws.com/accc-assetdata-prod/data/accc/upload/asset/M7/M7_traffic-data_FY20${i}_Q${j}_csv.zip; done; done

for j in {1..4}; do echo $j; wget https://s3.ap-southeast-2.amazonaws.com/accc-assetdata-prod/data/accc/upload/asset/M7/M7_traffic-data_FY2009_Q${j}_csv.zip; done

#NorthConnex (2021Q2 - present)
for i in {21..22}; do echo $i;for j in {1..4}; do echo $j; wget https://s3.ap-southeast-2.amazonaws.com/accc-assetdata-prod/data/accc/upload/asset/NCX/NCX_traffic-data_FY20${i}_Q${j}_csv.zip; done; done

#M5E
for i in {21..22}; do echo $i;for j in {1..4}; do echo $j; wget  https://s3.ap-southeast-2.amazonaws.com/accc-assetdata-prod/data/accc/upload/asset/M5E/M5E_traffic-data_FY20${i}_Q${j}_csv.zip; done; done

#unzip it all
unzip '*.zip'

#Remove zips
rm *.zip
#Remove M7 "trips" (keep "passages" as they are equivalent to other roads' trips.)

```
##TODO: The M5,this data is laid out a bit different... so the above command needs to be adapted.


## Python Notebooks
The two notebooks look at the data in different ways.
***TransportVis.ipynb*** deep dives into the CCT.
***TollDataSydney.ipynb*** looks at an overview of the entire toll set.
Explore them to find out more.

Key points: 

* There were 3,361,498,446 total trips on sydney Toll roads between 2009 and 2022.
* There is not much traffic on the roads at Christmas time.
* You can see COVID lockdowns in the traffic!


