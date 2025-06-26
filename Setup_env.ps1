# Step 1: Create virtual environment named "venv"
python -m venv venv

# Step 2: Activate the virtual environment
& ".\venv\Scripts\Activate.ps1"

# Step 3: Install required packages silently
pip install -q -r requirements.txt

Write-Host "`n Python virtual environment setup complete!" -ForegroundColor Green

# Step 4: Check Docker installation
Write-Host "`n Checking Docker installation..." -ForegroundColor Cyan
docker --version

# Step 5: Build Docker image
Write-Host "`n Building Docker image: ai-chatbot" -ForegroundColor Cyan
docker build -t ai-chatbot .

# Step 6: Run Docker container with environment file
Write-Host "`n Running Docker container using .env" -ForegroundColor Cyan
docker run --env-file .env ai-chatbot
