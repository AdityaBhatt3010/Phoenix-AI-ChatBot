# Use a minimal official Python image
FROM python:3.11-slim

# Set working directory inside the container
WORKDIR /app

# Copy project files into the container
COPY . .

# Upgrade pip and install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# (Optional) Set a dummy env variable for development clarity (will be overridden by --env-file)
ENV HF_TOKEN="changeme"

# Run your chatbot
CMD ["python", "ChatBot.py"]
