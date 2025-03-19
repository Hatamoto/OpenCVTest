# Use an official lightweight Python image
FROM python:3.10-slim

# Install Tesseract OCR, its dependencies, and libGL for OpenCV
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        tesseract-ocr \
        libtesseract-dev \
        libleptonica-dev \
        libgl1-mesa-glx && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy the requirements file and install Python dependencies
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy the rest of your project files into the container
COPY . .

# Specify the command to run your OCR script
CMD ["python", "ocr.py"]
