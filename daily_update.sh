#!/bin/bash

cd /home/unbuntu/coronavirus-data
git pull

git_export_all_file_versions by-age.csv /tmp/nyc_covid_data/data/by_age
git_export_all_file_versions data-by-modzcta.csv /tmp/nyc_covid_data/data/by_zip
git_export_all_file_versions data-by-boro.csv /tmp/nyc_covid_data/data/by_boro

cd /tmp/nyc_covid_data
git add .
git commit -m "Uploading latest data"
git push origin master
