#!/bin/bash

# Downloads all the data from https://nswtollroaddata.com/data-download/
# Set the current year and run
cd data
start_year=2009
end_year=2023

#All roads

for TOLL in CCT M2 LCT ED M4 M7 NCX M5E M5; do
  for i in $(seq $start_year $end_year); do
    for j in {1..4}; do
      if wget -q https://s3.ap-southeast-2.amazonaws.com/accc-assetdata-prod/data/accc/upload/asset/$TOLL/${TOLL}_traffic-data_FY${i}_Q${j}_csv.zip; then
        echo "$TOLL $i Q$j"
      else
      echo "No data for $TOLL $i Q$j"
      fi
    done;
  done;
done

#unzip it all, note m5 trips will overwrite one another for early data.
unzip '*.zip'

#Remove zips
rm *.zip 
