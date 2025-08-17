#!/usr/bin/env python3
import json
import os
import glob

def cleanup_json_data(file_path):
    """Remove duplicate dynamicModeStatus entries from JSON data section"""
    with open(file_path, 'r') as f:
        content = json.load(f)
    
    if 'data' in content:
        # Check if there are multiple dynamicModeStatus entries
        if isinstance(content['data'], list):
            seen_keys = set()
            cleaned_data = []
            for item in content['data']:
                if 'key' in item:
                    if item['key'] == 'dynamicModeStatus':
                        if 'dynamicModeStatus' not in seen_keys:
                            cleaned_data.append(item)
                            seen_keys.add('dynamicModeStatus')
                        # Skip duplicate dynamicModeStatus entries
                    else:
                        cleaned_data.append(item)
                else:
                    cleaned_data.append(item)
            
            content['data'] = cleaned_data
            
            # Write back the cleaned content
            with open(file_path, 'w') as f:
                json.dump(content, f, indent=2)
            
            return len(content['data']), len(seen_keys)
    
    return 0, 0

# Process all JSON files in Layouts directory
layouts_dir = './Layouts'
json_files = glob.glob(os.path.join(layouts_dir, '*.json'))

print(f"Found {len(json_files)} JSON files to process")

for json_file in sorted(json_files):
    total, unique = cleanup_json_data(json_file)
    if total > 0:
        print(f"Cleaned {os.path.basename(json_file)}: {total} data entries")