import tkinter as tk
from tkinter import ttk
from tkinter.ttk import Style
import pandas as pd

# Load the dataset
file_path = '/Users/erickvillanueva/Documents/GitHub/TT-project/dataset_sub.xlsx'
df = pd.read_excel(file_path)

# Create the main application window
root = tk.Tk()
root.title("Phrase Filter")

# Function to update the value options based on selected label
def update_values(label_var, value_menu, value_var):
    selected_label = label_var.get()
    if selected_label:
        unique_values = df[selected_label].dropna().unique()
        value_menu['menu'].delete(0, 'end')
        for value in unique_values:
            value_menu['menu'].add_command(label=value, command=tk._setit(value_var, value))
        value_var.set('')

# Function to filter phrases based on selected label and value
def filter_phrases(label_var, value_var):
    selected_label = label_var.get()
    selected_value = value_var.get()
    if selected_label and selected_value:
        return df[df[selected_label] == selected_value]['NP'].tolist()
    return []

# Function to filter phrases from both sections and display the common results
def filter_common_phrases():
    phrases_1 = filter_phrases(label_var_1, value_var_1)
    phrases_2 = filter_phrases(label_var_2, value_var_2)
    phrases_3 = filter_phrases(label_var_3, value_var_3) # 3
    common_phrases = list(set(phrases_1) & set(phrases_2) & set(phrases_3)) # 3

    result_text_1.delete('1.0', tk.END)
    result_text_2.delete('1.0', tk.END)
    result_text_3.delete('1.0', tk.END)
    common_result_text.delete('1.0', tk.END)

    for phrase in phrases_1:
        result_text_1.insert(tk.END, f"- {phrase}\n")
    for phrase in phrases_2:
        result_text_2.insert(tk.END, f"- {phrase}\n")
    for phrase in phrases_3:
        result_text_3.insert(tk.END, f"- {phrase}\n")

    count_var_1.set(f"Count: {len(phrases_1)}")
    count_var_2.set(f"Count: {len(phrases_2)}")
    count_var_3.set(f"Count: {len(phrases_3)}")

    if common_phrases:
        for phrase in common_phrases:
            common_result_text.insert(tk.END, f"- {phrase}\n")
        common_count_var.set(f"Common Count: {len(common_phrases)}")
    else:
        common_result_text.insert(tk.END, "No common phrases found.")
        common_count_var.set("Common Count: 0")

# Create label and value dropdown variables for the first filter section
label_var_1 = tk.StringVar()
value_var_1 = tk.StringVar()
count_var_1 = tk.StringVar()

# Create label and value dropdown variables for the second filter section
label_var_2 = tk.StringVar()
value_var_2 = tk.StringVar()
count_var_2 = tk.StringVar()

# Create label and value dropdown variables for the second filter section
label_var_3 = tk.StringVar()
value_var_3 = tk.StringVar()
count_var_3 = tk.StringVar()

common_count_var = tk.StringVar()

# Create first filter section
filter_frame_1 = ttk.Frame(root)
filter_frame_1.pack(side=tk.LEFT, padx=20, pady=20)

label_label_1 = ttk.Label(filter_frame_1, text="Select Label 1:")
label_label_1.pack(pady=5)
labels = df.columns[1:]  # Exclude the first column which is 'NP'
label_menu_1 = ttk.OptionMenu(filter_frame_1, label_var_1, '', *labels, command=lambda _: update_values(label_var_1, value_menu_1, value_var_1))
label_menu_1.pack(pady=5)

value_label_1 = ttk.Label(filter_frame_1, text="Select Value 1:")
value_label_1.pack(pady=5)
value_menu_1 = ttk.OptionMenu(filter_frame_1, value_var_1, '')
value_menu_1.pack(pady=5)

count_label_1 = ttk.Label(filter_frame_1, textvariable=count_var_1)
count_label_1.pack(pady=5)

# Create a text widget to display the first filter results
result_text_1 = tk.Text(filter_frame_1, wrap=tk.WORD, width=50, height=10, borderwidth=2, relief="groove")
result_text_1.pack(pady=10)

# Create second filter section
filter_frame_2 = ttk.Frame(root)
filter_frame_2.pack(side=tk.LEFT, padx=20, pady=20)

label_label_2 = ttk.Label(filter_frame_2, text="Select Label 2:")
label_label_2.pack(pady=5)
label_menu_2 = ttk.OptionMenu(filter_frame_2, label_var_2, '', *labels, command=lambda _: update_values(label_var_2, value_menu_2, value_var_2))
label_menu_2.pack(pady=5)

value_label_2 = ttk.Label(filter_frame_2, text="Select Value 2:")
value_label_2.pack(pady=5)
value_menu_2 = ttk.OptionMenu(filter_frame_2, value_var_2, '')
value_menu_2.pack(pady=5)

count_label_2 = ttk.Label(filter_frame_2, textvariable=count_var_2)
count_label_2.pack(pady=5)

# Create a text widget to display the second filter results
result_text_2 = tk.Text(filter_frame_2, wrap=tk.WORD, width=50, height=10, borderwidth=2, relief="groove")
result_text_2.pack(pady=10)

# Create third filter section
filter_frame_3 = ttk.Frame(root)
filter_frame_3.pack(side=tk.LEFT, padx=20, pady=20)

label_label_3 = ttk.Label(filter_frame_3, text="Select Label 3:")
label_label_3.pack(pady=5)
label_menu_3 = ttk.OptionMenu(filter_frame_3, label_var_3, '', *labels, command=lambda _: update_values(label_var_3, value_menu_3, value_var_3))
label_menu_3.pack(pady=5)

value_label_3 = ttk.Label(filter_frame_3, text="Select Value 3:")
value_label_3.pack(pady=5)
value_menu_3 = ttk.OptionMenu(filter_frame_3, value_var_3, '')
value_menu_3.pack(pady=5)

count_label_3 = ttk.Label(filter_frame_3, textvariable=count_var_3)
count_label_3.pack(pady=5)

# Create a text widget to display the third filter results
result_text_3 = tk.Text(filter_frame_3, wrap=tk.WORD, width=50, height=10, borderwidth=2, relief="groove")
result_text_3.pack(pady=10)

# Create a button to filter and find common phrases
filter_button = ttk.Button(root, text="Filter Common Phrases", command=filter_common_phrases)
filter_button.pack(pady=20)

# Create a label to display the common result count
common_count_label = ttk.Label(root, textvariable=common_count_var)
common_count_label.pack(pady=5)

# Create a text widget to display the common results
common_result_text = tk.Text(root, wrap=tk.WORD, width=50, height=10, borderwidth=2, relief="groove")
common_result_text.pack(pady=10)

# Create a style
style = Style()
style.configure('TButton', foreground='black')

label_label_1.configure(style='TButton')
value_label_1.configure(style='TButton')
label_menu_1.configure(style='TButton')
value_menu_1.configure(style='TButton')

label_label_2.configure(style='TButton')
value_label_2.configure(style='TButton')
label_menu_2.configure(style='TButton')
value_menu_2.configure(style='TButton')

label_label_3.configure(style='TButton')
value_label_3.configure(style='TButton')
label_menu_3.configure(style='TButton')
value_menu_3.configure(style='TButton')

filter_button.configure(style='TButton')
common_count_label.configure(style='TButton')

# Run the application
root.mainloop()

# Example: Internal_q-Complexity: Simple; ART_FUNCT_SORT_type: Meas; ONTO_NUM_type: sg
# Standarize labels: Meas ≠ Measure; sg ≠ SG
# Implement: None for all