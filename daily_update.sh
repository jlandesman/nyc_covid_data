#!/bin/bash

cd /home/ubuntu/coronavirus-data
git pull

git_export_all_file_versions by-age.csv /home/ubuntu/nyc_covid_data_disaggregated/data/by_age
git_export_all_file_versions data-by-modzcta.csv /home/ubuntu/nyc_covid_data_disaggregated/data/by_zip
git_export_all_file_versions data-by-boro.csv /home/ubuntu/nyc_covid_data_disaggregated/data/by_boro

cd /home/ubuntu/nyc_covid_data_disaggregated
git add .
git commit -m "Uploading latest data"
git push origin master
