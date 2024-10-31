#!/bin/bash

# Create project directory structure
mkdir -p kaggle_project/{data,models,notebooks,src/{data,features,models,visualization},tests,docs}

# Create initial files
touch kaggle_project/README.md
touch kaggle_project/requirements.txt
touch kaggle_project/.gitignore
touch kaggle_project/src/__init__.py

# Create a virtual environment
python3 -m venv kaggle_project/venv

# Create initial .gitignore content
cat << EOF > kaggle_project/.gitignore
# Python
__pycache__/
*.py[cod]
*$py.class
*.so
.Python
venv/
.env

# Data
data/*.csv
data/*.zip
data/*.parquet
*.pkl

# Jupyter
.ipynb_checkpoints
*.ipynb

# ML Models
models/*.pkl
models/*.h5
models/*.joblib

# IDE
.vscode/
.idea/
EOF

# Create initial README content
cat << EOF > kaggle_project/README.md
# Kaggle Project

## Project Structure
- data/: Raw and processed data
- models/: Trained models
- notebooks/: Jupyter notebooks for exploration
- src/: Source code
  - data/: Data processing scripts
  - features/: Feature engineering
  - models/: Model training code
  - visualization/: Plotting and visualization
- tests/: Unit tests
- docs/: Documentation

## Setup
1. Clone this repository
2. Create virtual environment: \`python -m venv venv\`
3. Activate virtual environment:
   - Windows: \`venv\\Scripts\\activate\`
   - Unix/MacOS: \`source venv/bin/activate\`
4. Install requirements: \`pip install -r requirements.txt\`
EOF

# Create initial requirements.txt with common ML packages
cat << EOF > kaggle_project/requirements.txt
numpy
pandas
scikit-learn
matplotlib
seaborn
jupyter
kaggle
torch
tensorflow
xgboost
lightgbm
opencv-python
albumentations
EOF
