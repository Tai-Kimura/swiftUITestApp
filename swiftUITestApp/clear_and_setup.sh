  #!/bin/bash

  # Get the directory where this script is located
  SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

  # Reset git state
  git reset --hard HEAD
  git clean -fd

  cd "$SCRIPT_DIR/swiftUITestApp"
  rm -rf swiftui_builder
  cd ..

  # Download installer from GitHub
  echo "Downloading SwiftJsonUI installer..."
  curl -fsSL
  curl -fsSL https://raw.githubusercontent.com/Tai-Kimura/SwiftJsonUI/7.0.0-beta/installer/bootstrap.sh | bash -s -- -v 7.0.0-beta -d ./swiftUITestApp -m swiftui --skip-bundle

  cd "$SCRIPT_DIR/swiftUITestApp/swiftui_builder/"