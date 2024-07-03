import tkinter as tk
from tkinter import ttk
import pandas as pd

# Load the dataset
file_path = 'C:/project_TT/dataset_sub.xlsx'
df = pd.read_excel(file_path)

# Create the main application window
root = tk.Tk()
root.title("Phrase Filter")

# Function to update the value options based on selected label
def update_values(*args):
    selected_label = label_var.get()
    if selected_label:
        unique_values = df[selected_label].dropna().unique()
        value_menu['menu'].delete(0, 'end')
        for value in unique_values:
            value_menu['menu'].add_command(label=value, command=tk._setit(value_var, value))
        value_var.set('')

# Function to filter and display the phrases
def filter_phrases():
    selected_label = label_var.get()
    selected_value = value_var.get()
    if selected_label and selected_value:
        filtered_phrases = df[df[selected_label] == selected_value]['NP'].tolist()
        result_text.delete('1.0', tk.END)
        if filtered_phrases:
            for phrase in filtered_phrases:
                result_text.insert(tk.END, f"- {phrase}\n")
            count_var.set(f"Count: {len(filtered_phrases)}")
        else:
            result_text.insert(tk.END, "No matching phrases found.")
            count_var.set("Count: 0")

# Create label and value dropdown variables
label_var = tk.StringVar()
value_var = tk.StringVar()
count_var = tk.StringVar()

# Create label dropdown menu
label_label = ttk.Label(root, text="Select Label:")
label_label.pack(pady=5)
labels = df.columns[1:]  # Exclude the first column which is 'NP'
label_menu = ttk.OptionMenu(root, label_var, *labels, command=update_values)
label_menu.pack(pady=5)

# Create value dropdown menu
value_label = ttk.Label(root, text="Select Value:")
value_label.pack(pady=5)
value_menu = ttk.OptionMenu(root, value_var, '')
value_menu.pack(pady=5)

# Create a button to filter phrases
filter_button = ttk.Button(root, text="Filter Phrases", command=filter_phrases)
filter_button.pack(pady=20)

# Create a label to display the result count
count_label = ttk.Label(root, textvariable=count_var)
count_label.pack(pady=5)

# Create a text widget to display the results
result_text = tk.Text(root, wrap=tk.WORD, width=50, height=10, borderwidth=2, relief="groove")
result_text.pack(pady=10)

# Run the application
root.mainloop()
