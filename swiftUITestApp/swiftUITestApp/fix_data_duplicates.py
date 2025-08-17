#!/usr/bin/env python3
import json
import os
import glob

def extract_all_data_items(obj, collected_data=None):
    """Recursively extract all data items from JSON structure and remove them"""
    if collected_data is None:
        collected_data = {}
    
    if isinstance(obj, dict):
        # If this object has a data section, collect it
        if 'data' in obj and isinstance(obj['data'], list):
            for item in obj['data']:
                if 'name' in item:
                    # Only add if we haven't seen this key before
                    if item['name'] not in collected_data:
                        collected_data[item['name']] = item
            # Remove the data section
            del obj['data']
        
        # Recursively process all values
        for key, value in obj.items():
            extract_all_data_items(value, collected_data)
    
    elif isinstance(obj, list):
        # Process each item in the list
        items_to_remove = []
        for i, item in enumerate(obj):
            if isinstance(item, dict) and len(item) == 1 and 'data' in item:
                # This is a data-only object, collect and mark for removal
                if isinstance(item['data'], list):
                    for data_item in item['data']:
                        if 'name' in data_item:
                            if data_item['name'] not in collected_data:
                                collected_data[data_item['name']] = data_item
                items_to_remove.append(i)
            else:
                extract_all_data_items(item, collected_data)
        
        # Remove data-only objects from the list
        for i in reversed(items_to_remove):
            obj.pop(i)
    
    return collected_data

def fix_json_data(file_path):
    """Fix JSON file by consolidating all data items at the top level"""
    with open(file_path, 'r') as f:
        content = json.load(f)
    
    # Extract all data items and remove them from nested structures
    all_data = extract_all_data_items(content)
    
    # If we collected any data items, add them at the top level
    if all_data:
        # Convert collected data dict to list
        data_list = list(all_data.values())
        
        # Make sure dynamicModeStatus comes first if it exists
        data_list.sort(key=lambda x: (x['name'] != 'dynamicModeStatus', x['name']))
        
        # Add data section at the top level
        content['data'] = data_list
        
        # Write back the fixed content
        with open(file_path, 'w') as f:
            json.dump(content, f, indent=2)
        
        return len(data_list)
    
    return 0

# Process all JSON files in Layouts directory
layouts_dir = './Layouts'
json_files = glob.glob(os.path.join(layouts_dir, '*.json'))

print(f"Found {len(json_files)} JSON files to process")

for json_file in sorted(json_files):
    count = fix_json_data(json_file)
    if count > 0:
        print(f"Fixed {os.path.basename(json_file)}: consolidated {count} data items")