#!/bin/bash
set -e
if ! command -v python &>/dev/null; then echo "python not found"; exit 1; fi
[ ! -d "venv" ] && python -m venv venv
source venv/Scripts/activate
pip install -r requirements.txt
python cli.py
