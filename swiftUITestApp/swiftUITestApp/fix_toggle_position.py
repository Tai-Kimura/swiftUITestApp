#!/usr/bin/env python3
import json
import os
import glob

def move_toggle_to_first_child(content):
    """
    Move dynamic_toggle button from ScrollView's direct child to the first position
    of the first View child's children
    """
    if content.get('type') == 'ScrollView' and 'child' in content:
        children = content['child']
        
        # Find and remove the dynamic_toggle button
        toggle_button = None
        new_children = []
        for child in children:
            if isinstance(child, dict) and child.get('style') == 'dynamic_toggle':
                toggle_button = child
            else:
                new_children.append(child)
        
        content['child'] = new_children
        
        # If we found a toggle button and there's a View child, insert it there
        if toggle_button and new_children:
            for child in new_children:
                if isinstance(child, dict) and child.get('type') == 'View':
                    # Make sure child has a 'child' array
                    if 'child' not in child:
                        child['child'] = []
                    elif not isinstance(child['child'], list):
                        child['child'] = [child['child']]
                    
                    # Insert toggle button at the beginning
                    child['child'].insert(0, toggle_button)
                    break
    
    return content

def process_json_file(file_path):
    """Process a single JSON file to move toggle button position"""
    with open(file_path, 'r') as f:
        content = json.load(f)
    
    # Move toggle button to correct position
    processed_content = move_toggle_to_first_child(content)
    
    # Write back the cleaned content
    with open(file_path, 'w') as f:
        json.dump(processed_content, f, indent=2)
    
    return True

# Process all JSON files in Layouts directory
layouts_dir = './Layouts'
json_files = glob.glob(os.path.join(layouts_dir, '*.json'))

print(f"Found {len(json_files)} JSON files to process")

for json_file in sorted(json_files):
    # Read file to check if it has ScrollView
    with open(json_file, 'r') as f:
        content = json.load(f)
    
    if content.get('type') == 'ScrollView':
        if process_json_file(json_file):
            print(f"Fixed: {os.path.basename(json_file)}")