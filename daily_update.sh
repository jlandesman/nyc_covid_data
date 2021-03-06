#!/bin/bash

cd /home/ubuntu/coronavirus-data
git pull

git_export_all_file_versions by-age.csv /home/ubuntu/nyc_covid_data/data/by_age
git_export_all_file_versions data-by-modzcta.csv /home/ubuntu/nyc_covid_data/data/by_zip
git_export_all_file_versions by-boro.csv /home/ubuntu/nyc_covid_data/data/by_boro
git_export_all_file_versions recent/recent-4-week-by-modzcta.csv /home/ubuntu/nyc_covid_data/data/recent

cd /home/ubuntu/nyc_covid_data
git add .
git commit -m "Uploading latest data"
git push origin master
