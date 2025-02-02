#!/bin/bash

# Base URL for downloading the files
base_url="https://github.com/DataTalksClub/nyc-tlc-data/releases/download/green/"

# List of files to download
files=(
    "green_tripdata_2019-01.csv.gz"
    "green_tripdata_2019-02.csv.gz"
    "green_tripdata_2019-03.csv.gz"
    "green_tripdata_2019-04.csv.gz"
    "green_tripdata_2019-05.csv.gz"
    "green_tripdata_2019-06.csv.gz"
    "green_tripdata_2019-07.csv.gz"
    "green_tripdata_2019-08.csv.gz"
    "green_tripdata_2019-09.csv.gz"
    "green_tripdata_2019-10.csv.gz"
    "green_tripdata_2019-11.csv.gz"
    "green_tripdata_2019-12.csv.gz"
    "green_tripdata_2020-01.csv.gz"
    "green_tripdata_2020-02.csv.gz"
    "green_tripdata_2020-03.csv.gz"
    "green_tripdata_2020-04.csv.gz"
    "green_tripdata_2020-05.csv.gz"
    "green_tripdata_2020-06.csv.gz"
    "green_tripdata_2020-07.csv.gz"
    "green_tripdata_2020-08.csv.gz"
    "green_tripdata_2020-09.csv.gz"
    "green_tripdata_2020-10.csv.gz"
    "green_tripdata_2020-11.csv.gz"
    "green_tripdata_2020-12.csv.gz"
    "green_tripdata_2021-01.csv.gz"
    "green_tripdata_2021-02.csv.gz"
    "green_tripdata_2021-03.csv.gz"
    "green_tripdata_2021-04.csv.gz"
    "green_tripdata_2021-05.csv.gz"
    "green_tripdata_2021-06.csv.gz"
    "green_tripdata_2021-07.csv.gz"
)

# Download and unzip each file
for file in "${files[@]}"; do
    wget "${base_url}${file}"
    gunzip "${file}"
done
