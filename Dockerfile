# Use Python 3.11 slim image as base
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements first for better caching
COPY requirements.txt .

# Install Python dependencies
RUN pip install -r requirements.txt

# Copy application code
COPY . .

# Expose the port
EXPOSE 5000

# Default command to run the Flask application
CMD ["flask", "--app", "web.py", "run", "--host", "0.0.0.0", "--port", "5000"] 