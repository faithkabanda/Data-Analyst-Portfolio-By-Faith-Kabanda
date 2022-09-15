# Data-Analyst-Portfolio-By-Faith-Kabanda 

Project 1

Step 1: Open each city's data file, run a consolidation python code using:
import pandas as pd
import openpyxl
import os
import numpy as np
import warnings

Clean data by: 
1. replacing spaces with underscores using -  data.columns=data.columns.str.replace(' ','_') 
2. Adding a file variable so as to distinquish various types for reports using - data['file']='income 
3. Selecting the variables of interest in the dataset data by using data1 = data[['respondent_id',  'city_of_residence', all available columns]].copy()
4. Renaming the variables names by using- data1=data1.rename(columns={
                        'income_report_data_id':'data_id',
                        'income_report_amount':'amount',...})
5. Join the data using - income_reports.append(data1)
6. joining the data into the initialized empty data frame income_reports using- income_reports=pd.concat(income_reports)

Do the rest for all reports of the same city i.e. 

Do the rest for all cities

Step 2: Consolidate all
