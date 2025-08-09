#!/bin/bash

# Get the directory where this script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Reset git state
git reset --hard HEAD
git clean -fd

cd "$SCRIPT_DIR/swiftUITestApp"
rm -rf sjui_tools
rm -f sjui.config.json
cd ..

# Download and run the installer directly
echo "Downloading SwiftJsonUI installer..."
TEMP_INSTALLER="/tmp/install_sjui_$$.sh"
curl -fsSL "https://raw.githubusercontent.com/Tai-Kimura/SwiftJsonUI/7.0.0-beta/installer/install_sjui.sh" -o "$TEMP_INSTALLER"
chmod +x "$TEMP_INSTALLER"

# Run installer with SwiftUI mode
echo "Installing with SwiftUI mode..."
bash "$TEMP_INSTALLER" -v 7.0.0-beta -d ./swiftUITestApp -m swiftui

# Clean up temp installer
rm -f "$TEMP_INSTALLER"

cd "$SCRIPT_DIR/swiftUITestApp"

# Update config.json with correct source_directory for SwiftUI mode
echo "Updating config for SwiftUI mode..."
cat > sjui.config.json << 'EOF'
{
  "mode": "swiftui",
  "project_name": "swiftUITestApp",
  "project_file_name": "swiftUITestApp",
  "source_directory": "swiftUITestApp",
  "layouts_directory": "Layouts",
  "styles_directory": "Styles",
  "view_directory": "View",
  "swiftui": {
    "output_directory": "Generated"
  },
  "use_network": false
}
EOF

# Run sjui setup
echo ""
echo "Running sjui setup..."
./sjui_tools/bin/sjui setup

echo ""
echo "Setup complete!"