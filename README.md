# TT-project

Welcome to DialectQuant!

In this project, we created databases for a corpus made from different German dialect phrases containing a partitive quantifier, for example, eine Scheibe Brot, ein bisschen Milch, manche von meinen Kollegen, etc. The annotated data corpus already existed in an Excel format, which we then converted to both XML and SQL formats. The goal of the project was to compare which of the two methods were more suitable for storing data in an accessible format and for querying. The XML-converted data is queryable through XPath, XQuery, and through SQL. The user interface can also be used to view the data through an interactive format.

Below is an overview of the files -
1. UserInterface.py - Python file that makes the data viewable through a GUI.
2. annotations.xml - XML file containing annotated data.
3. dataset_sub.xlsx - The data in the original Excel format.
4. sql_script.py - Python script to convert the XML data to SQL format.
5. xlsx_to_xml.py - Python script to convert the Excel data to XML format..
6. xml_schema_v1.xml - XML schema for the given data.
