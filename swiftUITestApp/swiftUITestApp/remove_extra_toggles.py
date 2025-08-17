#!/usr/bin/env python3
import json
import os
import glob

def remove_dynamic_toggles(obj, depth=0, keep_first=True):
    """
    Recursively remove dynamic toggle buttons from nested structures.
    Keep only the first one at the top level.
    """
    if isinstance(obj, dict):
        # Check if this is a dynamic toggle button
        if obj.get('style') == 'dynamic_toggle':
            if keep_first:
                # Keep the first one, but don't keep any more
                return obj, False
            else:
                # Remove this toggle button
                return None, keep_first
        
        # Process all values in the dictionary
        for key in list(obj.keys()):
            if key == 'child':
                # Process child array
                if isinstance(obj[key], list):
                    new_children = []
                    current_keep = keep_first if depth == 0 else False
                    for child in obj[key]:
                        processed, current_keep = remove_dynamic_toggles(child, depth + 1, current_keep)
                        if processed is not None:
                            new_children.append(processed)
                    obj[key] = new_children
            elif isinstance(obj[key], (dict, list)):
                obj[key], _ = remove_dynamic_toggles(obj[key], depth + 1, False)
        
        return obj, keep_first
    
    elif isinstance(obj, list):
        new_list = []
        current_keep = keep_first if depth == 0 else False
        for item in obj:
            processed, current_keep = remove_dynamic_toggles(item, depth, current_keep)
            if processed is not None:
                new_list.append(processed)
        return new_list, keep_first
    
    return obj, keep_first

def process_json_file(file_path):
    """Process a single JSON file to remove extra dynamic toggles"""
    with open(file_path, 'r') as f:
        content = json.load(f)
    
    # Remove extra toggles, keeping only the first one
    processed_content, _ = remove_dynamic_toggles(content, 0, True)
    
    # Write back the cleaned content
    with open(file_path, 'w') as f:
        json.dump(processed_content, f, indent=2)
    
    return True

# Process all JSON files in Layouts directory
layouts_dir = './Layouts'
json_files = glob.glob(os.path.join(layouts_dir, '*.json'))

print(f"Found {len(json_files)} JSON files to process")

for json_file in sorted(json_files):
    if process_json_file(json_file):
        print(f"Cleaned: {os.path.basename(json_file)}")