import pandas as pd
import xml.etree.ElementTree as ET
from xml.dom import minidom

def excel_to_xml(excel_file, xml_file):
    # Read the Excel file
    df = pd.read_excel(excel_file, header=0)  # Adjust header row if necessary

    # Create the root element
    root = ET.Element("Annotations", {
        "xmlns:xsi": "http://www.w3.org/2001/XMLSchema-instance",
        "xsi:noNamespaceSchemaLocation": "schema.xsd"
    })

    for _, row in df.iterrows():
        phrase = ET.SubElement(root, "Phrase")
        
        # Add Text element
        text = ET.SubElement(phrase, "Text")
        text.text = str(row['NP'])

        # Add internal_q_Complexity element
        complexity = ET.SubElement(phrase, "internal_q_Complexity")
        complexity.text = str(row['Internal_q-COMPLEXITY']) 

        # Add Art_Funktion_classifier_expressions element
        classifier_expressions = ET.SubElement(phrase, "Art_Funktion_classifier_expressions")

        # Add SORT_type element
        sort_type = ET.SubElement(classifier_expressions, "SORT_type")
        sort_type.text = str(row['ART_FUNC SORT_type']) 

        # Add SemTarget element
        sem_target = ET.SubElement(classifier_expressions, "SemTarget")
        sem_target.text = str(row['ART_FUNC sem_target']) 

        # Add ontological_inhaerentes_Numerus element
        ontological_numerus = ET.SubElement(phrase, "ontological_inhaerentes_Numerus")

        # Add ONTO_type element
        onto_type = ET.SubElement(ontological_numerus, "ONTO_type")
        onto_type.text = str(row['ONTO-type']) 

        # Add NUM_type element
        num_type = ET.SubElement(ontological_numerus, "NUM_type")
        num_type.text = str(row['ONTO-NUM-type']) 

    # Create a new XML tree with the root element
    tree = ET.ElementTree(root)

    # Create a string from the XML tree with pretty-printing
    xml_str = ET.tostring(root, encoding='unicode')
    pretty_xml_str = minidom.parseString(xml_str).toprettyxml(indent="  ")

    # Write the pretty-printed XML string to a file
    with open(xml_file, 'w', encoding='utf-8') as f:
        f.write(pretty_xml_str)

# Usage
excel_file = 'C:/project_TT/dataset_sub.xlsx'
xml_file = 'C:/project_TT/annotations.xml'
excel_to_xml(excel_file, xml_file)
