#!/usr/bin/env python3
import os
import glob

# Find all ViewModel files
viewmodel_files = glob.glob('ViewModel/*.swift')

for file_path in viewmodel_files:
    with open(file_path, 'r') as f:
        content = f.read()
    
    # Replace the incorrect toggle call with the correct one
    if 'ViewSwitcher.isDynamicMode.toggle()' in content:
        content = content.replace(
            'ViewSwitcher.isDynamicMode.toggle()',
            'ViewSwitcher.toggleDynamicMode()'
        )
        
        # Write back the modified content
        with open(file_path, 'w') as f:
            f.write(content)
        
        print(f"Fixed: {os.path.basename(file_path)}")

print("Done!")