## About
Our goal is to create a model based on a variety different home features to determine price. Our specic questions to answer are weather square footage, having a porch, having a waterfront, or being in nuisance affect home price.

## Findings
Our model predicticed a 78% corellation for home price. We can fail to reject the null hypothesis. Based on our visualizations we can say that our data isnt normally distributed


## DELIVERABLES
* `/src` directory stores all relevant source code.
* `/reports` stores all relevant raw and processed data files.
* `/visualization` includes all relevant visualization figures.
 
## Setup Instructions
 
To download the necessary data, download Real Property Sales, Residential Building, and Parcel from `https://info.kingcounty.gov/assessor/DataDownload/default.aspx`
please run the following command:
 
Create DB Seattle_housing assuming you have PostgreSQL with `import_csv.sql` file. You have to edit the path in import_csv
 
### `linreg-env` conda environment
 
This project relies on you using the [`environment.yml`](environment.yml) file to recreate the `oy-env` conda environment. To do so, please run the following commands:
 
```bash
# create the oy-env conda environment
# note: this make take anywhere from 10-20 minutes
conda env create -f environment.yml
 
# activate the oy-env conda environment
conda activate linreg-env
 
# make oy-env available to you as a kernel in jupyter
python -m ipykernel install --user --name oy-env --display-name "linreg-env"
```
`reports/model_builder.ipynb` contains all functions used to build model and creates graph
`reports/king_county_home_price_analysis.ipynb` contains analysis of results 