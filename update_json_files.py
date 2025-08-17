#!/usr/bin/env python3

import json
import os

layouts_dir = "/Users/like-a-rolling_stone/resource/swiftUITestApp/swiftUITestApp/swiftUITestApp/Layouts"

# Files to skip
skip_files = ["test_menu.json", "included1.json", "included2.json", "converter_test_cell.json"]

for filename in os.listdir(layouts_dir):
    if filename.endswith(".json") and filename not in skip_files:
        filepath = os.path.join(layouts_dir, filename)
        
        with open(filepath, 'r') as f:
            data = json.load(f)
        
        # Function to add data definition to a component
        def add_data_to_component(component):
            if isinstance(component, dict):
                # Check if this is a container with children
                if "child" in component and isinstance(component["child"], list):
                    # Check if data definition already exists
                    has_data = False
                    data_index = -1
                    for i, child in enumerate(component["child"]):
                        if isinstance(child, dict) and "data" in child:
                            has_data = True
                            data_index = i
                            # Check if dynamicModeStatus already exists
                            if isinstance(child["data"], list):
                                has_dynamic_mode = any(
                                    isinstance(d, dict) and d.get("name") == "dynamicModeStatus" 
                                    for d in child["data"]
                                )
                                if not has_dynamic_mode:
                                    child["data"].append({
                                        "name": "dynamicModeStatus",
                                        "class": "String",
                                        "defaultValue": "OFF"
                                    })
                            break
                    
                    # If no data definition exists, add one
                    if not has_data:
                        # Find where to insert data definition (before any UI elements)
                        insert_index = 0
                        for i, child in enumerate(component["child"]):
                            if isinstance(child, dict) and "type" in child:
                                insert_index = i
                                break
                        
                        component["child"].insert(insert_index, {
                            "data": [
                                {
                                    "name": "dynamicModeStatus",
                                    "class": "String",
                                    "defaultValue": "OFF"
                                }
                            ]
                        })
                
                # Recursively process children
                if "child" in component:
                    if isinstance(component["child"], list):
                        for child in component["child"]:
                            add_data_to_component(child)
                    elif isinstance(component["child"], dict):
                        add_data_to_component(component["child"])
        
        # Add data to the root component
        add_data_to_component(data)
        
        # Write back the modified JSON
        with open(filepath, 'w') as f:
            json.dump(data, f, indent=2, ensure_ascii=False)
        
        print(f"Updated: {filename}")

print("Done!")