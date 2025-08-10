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

# Download and run the installer directly with SwiftUI mode
echo "Downloading SwiftJsonUI installer..."
curl -fsSL https://raw.githubusercontent.com/Tai-Kimura/SwiftJsonUI/7.0.0-beta/installer/bootstrap.sh | bash -s -- -v 7.0.0-beta -d ./swiftUITestApp -m swiftui

# Clean up temp installer
rm -f "$TEMP_INSTALLER"

cd "$SCRIPT_DIR/swiftUITestApp"

# Run sjui setup
echo ""
echo "Running sjui setup..."
./sjui_tools/bin/sjui setup

echo ""
echo "Setup complete!"