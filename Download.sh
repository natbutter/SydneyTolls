mkdir -p data
cd data
start_year=2009
end_year=2025

#All roads
for TOLL in CCT M2 LCT ED M4 M5E M5 NCX WCX M7; do
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

#unzip it all, m5 trips will overwrite one another for data prior to 1 Oct 2019.
unzip '*.zip'

#Remove zips
rm *.zip 

#Re-zip all files into one archive for upload
zip tolls.zip *.csv
