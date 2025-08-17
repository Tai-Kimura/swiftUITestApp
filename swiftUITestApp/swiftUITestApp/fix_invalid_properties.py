#!/usr/bin/env python3
import json
import os
import glob

def remove_invalid_properties(obj):
    """
    Remove invalid properties from dynamic_toggle buttons
    """
    if isinstance(obj, dict):
        # Check if this is a dynamic toggle button
        if obj.get('style') == 'dynamic_toggle':
            # Remove invalid properties
            invalid_props = ['position', 'top', 'right', 'left', 'bottom', 'zIndex']
            for prop in invalid_props:
                if prop in obj:
                    del obj[prop]
        
        # Recursively process all values
        for key, value in obj.items():
            if isinstance(value, (dict, list)):
                remove_invalid_properties(value)
    
    elif isinstance(obj, list):
        for item in obj:
            remove_invalid_properties(item)
    
    return obj

def process_json_file(file_path):
    """Process a single JSON file to remove invalid properties"""
    with open(file_path, 'r') as f:
        content = json.load(f)
    
    # Remove invalid properties
    processed_content = remove_invalid_properties(content)
    
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
        print(f"Fixed: {os.path.basename(json_file)}")