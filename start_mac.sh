#!/bin/bash

VENV_DIR="venv"

echo "--- Setting up Python OpenGL environment on macOS ---"

# Check for python3
if ! command -v python3 &> /dev/null; then
    echo "[ERROR] Python 3 not found. Please install it first."
    exit 1
fi

# Create venv if it doesn't exist
if [ ! -d "$VENV_DIR" ]; then
    echo "[INFO] Creating virtual environment..."
    python3 -m venv "$VENV_DIR"
fi

# Activate the environment
source "$VENV_DIR/bin/activate"

# Install packages
echo "[INFO] Installing packages..."
pip install --upgrade pip
pip install pyopengl pyopengl-accelerate pyopengltk pygame

echo "[SUCCESS] Environment is ready. To activate later, run:"
echo "source $VENV_DIR/bin/activate"
