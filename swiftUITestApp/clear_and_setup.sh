  #!/bin/bash

  # Get the directory where this script is located
  SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

  # Reset git state
  git reset --hard HEAD
  git clean -fd

  cd "$SCRIPT_DIR/bindingTestApp"
  rm -rf swiftui_builder
  cd ..

  # Download installer from GitHub
  echo "Downloading SwiftJsonUI installer..."
  curl -fsSL
  curl -fsSL https://raw.githubusercontent.com/Tai-Kimura/SwiftJsonUI/master/installer/bootstrap.sh | bash -s -- -v 7.0.0-alpha -d ./swiftUITestApp -m swiftui --skip-bundle

  cd "$SCRIPT_DIR/bindingTestApp/swiftui_builder/"