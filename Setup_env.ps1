# Step 1: Create virtual environment named "venv"
python -m venv venv

# Step 2: Activate the virtual environment
# Call operator (&) to properly execute the script
& ".\venv\Scripts\Activate.ps1"

# Step 3: Install required packages silently
pip install -q -r requirements.txt

Write-Host "Environment setup complete!"
