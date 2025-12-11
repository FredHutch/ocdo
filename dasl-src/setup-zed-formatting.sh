#!/bin/bash

# Setup script for Zed HTML/Jinja template formatting
# This script configures Zed editor for automatic format-on-save with djLint
# Uses uv for Python package management

set -e

echo "🚀 Setting up Zed HTML/Jinja template formatting..."

# Check if we're in the right directory
if [ ! -f "config.toml" ]; then
    echo "❌ Error: Please run this script from the project root directory"
    exit 1
fi

# Get the absolute path of the project directory
PROJECT_DIR=$(pwd)
SCRIPT_PATH="$PROJECT_DIR/scripts/djlint-format.sh"

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Ensure scripts directory exists
mkdir -p scripts

# Make sure the djlint-format script is executable
if [ -f "$SCRIPT_PATH" ]; then
    chmod +x "$SCRIPT_PATH"
    echo "✅ djLint wrapper script is executable"
else
    echo "❌ djLint wrapper script not found at $SCRIPT_PATH"
    exit 1
fi

# Update Zed settings with correct path
if [ -f ".zed/settings.json" ]; then
    # Create a backup
    cp ".zed/settings.json" ".zed/settings.json.backup"
    echo "📋 Backed up existing Zed settings"
fi

# Create .zed directory if it doesn't exist
mkdir -p .zed

# Update the settings file with the correct absolute path
cat > .zed/settings.json << EOF
{
  // Zed project settings for HTML formatting with Jinja templating
  "format_on_save": "on",
  "tab_size": 2,
  "hard_tabs": false,
  "show_whitespaces": "selection",
  "remove_trailing_whitespace_on_save": true,
  "ensure_final_newline_on_save": true,

  // Language-specific settings
  "languages": {
    "HTML": {
      "format_on_save": "on",
      "tab_size": 2,
      "formatter": {
        "external": {
          "command": "$SCRIPT_PATH",
          "arguments": []
        }
      }
    },
    "Jinja": {
      "format_on_save": "on",
      "tab_size": 2,
      "formatter": {
        "external": {
          "command": "$SCRIPT_PATH",
          "arguments": []
        }
      }
    }
  },

  // File associations
  "file_types": {
    "HTML": ["html", "htm"],
    "Jinja": ["jinja", "j2"]
  },

  // Soft wrap settings for better template editing
  "soft_wrap": "editor_width",
  "preferred_line_length": 80,

  // Show indent guides for better template structure visibility
  "indent_guides": {
    "enabled": true,
    "line_width": 1,
    "active_line_width": 2
  }
}
EOF

echo "✅ Updated Zed settings with absolute script path"

# Test the formatter
echo "🧪 Testing the formatter..."
TEST_HTML='<div class="test">{{ variable }}</div>'
FORMATTED=$(echo "$TEST_HTML" | "$SCRIPT_PATH")

if [ $? -eq 0 ]; then
    echo "✅ Formatter test passed"
    echo "   Input:  $TEST_HTML"
    echo "   Output: $FORMATTED"
else
    echo "❌ Formatter test failed"
    exit 1
fi

# Check djlint version
DJLINT_VERSION=$(djlint --version 2>/dev/null || echo "unknown")
echo "📋 djLint version: $DJLINT_VERSION"

echo ""
echo "✅ Setup complete!"
echo ""
echo "🎯 Next steps:"
echo "1. Open this project in Zed editor"
echo "2. Open any HTML file in the templates/ directory"
echo "3. Make some changes and save the file"
echo "4. Your HTML will be automatically formatted with djLint!"
echo ""
echo "🔧 Configuration files created/updated:"
echo "   - .zed/settings.json (Zed project settings)"
echo "   - scripts/djlint-format.sh (djLint wrapper script)"
echo "   - .djlintrc (djLint configuration)"
echo ""
echo "📦 Package management:"
echo "   - djLint installed via uv tool install"
echo "   - Version: $DJLINT_VERSION"
echo "   - Location: $(which djlint)"
echo ""
echo "📝 Format-on-save is now enabled for:"
echo "   - HTML files with Jinja templating"
echo "   - Proper indentation (2 spaces)"
echo "   - Template tag spacing"
echo "   - Attribute alignment"
echo ""
echo "💡 Pro tip: You can also manage djLint with these uv commands:"
echo "   uv tool upgrade djlint    # Upgrade djLint"
echo "   uv tool uninstall djlint  # Remove djLint"
echo "   uv tool list              # List installed tools"
echo ""
echo "Happy formatting in Zed! 🎉"
