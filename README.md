# SydneyTolls
Some python notebooks exploring Sydney Toll Road data.

## Data
I downloaded all the data from here
https://nswtollroaddata.com/data-download/

Put all these files in the 'data' directory. And then run the notebooks.

You can download most of the data quickly in one go with Bash for each of the Toll Roads using the *Download.sh* script.
```
bash Download.sh

```

Some toll road data sets contain just "trips". These are single "beeps" as one moves under a gantry. Some data contain a 'trips' and a 'passages' file, in this case 'passages' indicates a single "beep", whereas 'trips' are the combined "entry" and "exit" data for a journey through a toll road. 

The M5 data prior 2018 came in a completely different format. Homework for someone to add.


## Python Notebooks
The two notebooks look at the data in different ways.
***TransportVis.ipynb*** deep dives into the CCT.
***TollDataSydney.ipynb*** looks at an overview of the entire toll set.
Explore them to find out more.
The data is growing every year, so we may need to adapt them or consider new ways to visualise the data in the future (especially TollDataSydney) as they consume more ram!

Key points: 

* There were 4,361,208,977 total trips on sydney Toll roads between 2009 and 2024.
* There is not much traffic on the roads at Christmas time.
* You can see COVID lockdowns in the traffic!


