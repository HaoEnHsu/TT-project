import pandas as pd
from sqlalchemy import create_engine
import xml.etree.ElementTree as ET
import os

filename = os.path.abspath("annotations.xml")

tree = ET.parse(filename)
root = tree.getroot()

syn=[]
art=[]
onto=[]

#reads XML file and organizes into different dataframes 
for phrase in root.iter('Phrase'):
    phrasetext = phrase.find('Text').text
    internal_q_Complexity = phrase.find('internal_q_Complexity').text
    for art_funk in phrase.iter('Art_Funktion_classifier_expressions'):
        SORT_type = art_funk.find('SORT_type').text
        SemTarget = art_funk.find('SemTarget').text
    for onto_num in phrase.iter('ontological_inhaerentes_Numerus'):
        ONTO_type = onto_num.find('ONTO_type').text
        NUM_type = onto_num.find('NUM_type').text
    
    art.append([phrasetext,SORT_type,SemTarget])
    syn.append([phrasetext,internal_q_Complexity,])
    onto.append([phrasetext,ONTO_type,NUM_type])

df_Syn = pd.DataFrame(syn,columns=['Text','Internal_q-COMPLEXITY'])
df_Art = pd.DataFrame(art, columns=["Text","SORT_type","SemTarget"])
df_Onto = pd.DataFrame(onto, columns=["Text","ONTO-type","NUM_type"])
    
#connects to engine
conn_string = "postgresql+psycopg2://postgres:postgres@localhost:5432/dialectquant"
db = create_engine(conn_string)

#converts to sql and uploads to database
df_Syn.to_sql("out_syn", con=db, if_exists="replace", index=True)
df_Art.to_sql("art_class", con=db, if_exists="replace", index=True)
df_Onto.to_sql("onto", con=db, if_exists="replace", index=True)

