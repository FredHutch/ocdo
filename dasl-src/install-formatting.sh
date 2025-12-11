#!/bin/bash

# One-command installer for Zed HTML/Jinja template formatting
# This script installs uv, djlint, and configures everything for format-on-save

set -e

echo "🚀 Installing complete Zed HTML/Jinja formatting setup..."
echo ""

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check if we're in the right directory
if [ ! -f "config.toml" ]; then
    echo "❌ Error: Please run this script from the project root directory"
    exit 1
fi

# Step 1: Install uv if not present
echo "📦 Step 1: Installing uv..."
if ! command_exists uv; then
    echo "Installing uv package manager..."
    if command_exists curl; then
        curl -LsSf https://astral.sh/uv/install.sh | sh
        # Source the updated PATH
        export PATH="$HOME/.cargo/bin:$PATH"
        # Also add to current session PATH
        if [ -f "$HOME/.cargo/env" ]; then
            source "$HOME/.cargo/env"
        fi
    elif command_exists brew; then
        brew install uv
    else
        echo "❌ Cannot install uv automatically. Please install uv first:"
        echo "   curl -LsSf https://astral.sh/uv/install.sh | sh"
        echo "   Then re-run this script."
        exit 1
    fi
    echo "✅ uv installed successfully"
else
    echo "✅ uv already installed"
fi

# Step 2: Install djLint with uv
echo ""
echo "🐍 Step 2: Installing djLint..."
uv tool install djlint --force
echo "✅ djLint installed with uv"

# Step 3: Run the Zed setup
echo ""
echo "⚙️ Step 3: Configuring Zed editor settings..."
if [ -f "setup-zed-formatting.sh" ]; then
    chmod +x setup-zed-formatting.sh
    ./setup-zed-formatting.sh
else
    echo "❌ setup-zed-formatting.sh not found. Please ensure all files are present."
    exit 1
fi

echo ""
echo "🎯 Installation complete!"
echo ""
echo "📋 What was installed/configured:"
echo "   ✅ uv package manager"
echo "   ✅ djLint formatter (managed by uv)"
echo "   ✅ Zed project settings for format-on-save"
echo "   ✅ djLint wrapper script for Zed integration"
echo "   ✅ Template formatting configuration"
echo ""
echo "🚀 Next steps:"
echo "   1. Open this project in Zed editor"
echo "   2. Edit any HTML file in templates/"
echo "   3. Save the file (Cmd/Ctrl+S)"
echo "   4. Watch automatic formatting happen!"
echo ""
echo "💡 Useful commands:"
echo "   uv tool upgrade djlint    # Upgrade djLint"
echo "   uv tool list              # List installed tools"
echo "   ./test-formatting.sh      # Test the setup"
echo ""
echo "🎉 Happy formatting in Zed!"
