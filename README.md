comparicluster
==============

This is a simple R script which takes an input dataset and performs 4 different clustering algorithms on it using the 4 most common clustering approaches. It then evaluates each algorithm with standard clustering metrics and presents them on a single pdf.

The idea is to make a quick and dirty r script for different clustering approaches available to non-statisticians or social scientists/HCI folk who don't use R. 

I want to kickstart a conversation for using exploratory statistics by non-statisticians as this is sadly lacking in most literature I read nowadays. A painless script, in my opinion, might be just the way for folks to see that this can be a subjective and useful method for talking about interrelated data.

Clustering approaches used:

1. Hierarchical clustering - Ward's method
2. Centroid based clustering - k-means algorithm
3. Density based clustering - DBScan method
4. Distribution based clustering - GMM/BIC approach

I have used commonly available R libraries to construct this script so that anyone can choose to replicate this on their system. I have also provided sample data to make this work. Currently, this is optimized for 2X2 clusters as social scientists will probably explore dual relationships first but will be extended to 3X3 and 4X4 in the future.

<b>HOWTOUSE:</b>

In directory with dataset:

R CMD BATCH comparicluster.R

<b>EXAMPLE:</b>

dataset: spaeth_01.csv (free. available here: http://people.sc.fsu.edu/~jburkardt/datasets/spaeth/spaeth_01.txt)
output: https://github.com/shionguha/comparicluster/blob/master/comparicluster.png

<b>TODOS:</b>

1. Calculating cluster metrics (dunn index, rand index, entropy) to show which clustering method might be the most optimal for your data.
2. Writing code to compute optimal number of clusters for k-means and gmm
3. More types of data?
4. Change example to Fishers iris dataset (its a classic !)
