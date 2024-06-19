import pandas as pd
from sqlalchemy import *
from sqlalchemy.orm import *
import openpyxl


#reads excel file and creates dataframe
xls = pd.ExcelFile("/Users/madhumitha/Downloads/dataset for TT.xlsx")
df = pd.read_excel(xls,sheet_name="data",skiprows=[0])

#creates individual dataframes for each feature subset
df_Syn = pd.DataFrame(data=df, columns=["Unnamed: 0","Internal_q-COMPLEXITY"])
df_Syn.columns=["text", "internal_q_complexity"]

df_Art = pd.DataFrame(data=df, columns=["Unnamed: 0","SORT_type","SemTarget"])
df_Art.columns=["text", "sort_type", "semtarget"]

df_Onto = pd.DataFrame(data=df, columns=["Unnamed: 0","ONTO-type"])
df_Onto.columns=["text", "onto_type"]

df_Num = pd.DataFrame(data=df, columns=["Unnamed: 0","NUM-type"])
df_Num.columns=["text", "num_type"]

#connects to engine
conn_string = "postgresql://postgres:postgres@localhost:5432/dialectquant"
db = create_engine(conn_string)

#converts to sql and uploads to database
df_Syn.to_sql("out_syn", con=db, if_exists="replace", index=True)
df_Art.to_sql("art_class", con=db, if_exists="replace", index=True)
df_Onto.to_sql("onto", con=db, if_exists="replace", index=True)
df_Num.to_sql("num", con=db, if_exists="replace", index=True)