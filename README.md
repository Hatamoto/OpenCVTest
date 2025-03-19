# Python OCR Project

This project uses Python, OpenCV, and Tesseract OCR (via the pytesseract wrapper) to extract text from images. It includes a basic preprocessing pipeline to improve recognition accuracy, especially for images with uneven backgrounds.

## Features

- **Image Preprocessing:** Converts images to grayscale, applies noise reduction, adaptive thresholding, and morphological operations to enhance text regions.
- **OCR Extraction:** Uses Tesseract OCR to extract text from processed images.
- **Bounding Box Detection:** (Optional) Detects text regions by finding contours to improve OCR on specific areas.
- **Flexible Preprocessing:** Easily adjustable parameters to optimize performance for different types of images.

## Prerequisites

- **Python 3.x**
- **OpenCV:** For image processing.
- **pytesseract:** Python wrapper for Tesseract OCR.
- **Tesseract-OCR:** Installed on your system (macOS users can install via Homebrew).

## Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/yourusername/python-ocr-project.git
   cd python-ocr-project

2. **Create and activate a virtual environment (optional but recommended):**

	```bash
	python3 -m venv venv
	source venv/bin/activate  # On Windows: venv\Scripts\activate

3. **Install required Python packages:**

	```bash
	pip install -r requirements.txt

4. **Install Tesseract-OCR:**

- MacOS:
	```bash
	brew install tesseract
	
- Linux (Debian/Ubuntu):
	```bash
	sudo apt-get install tesseract-ocr
- Windows
	Download and install Tesseract from <a href="https://github.com/tesseract-ocr/tesseract">this repository</a>.

5. **Configure pytesseract:**
	```python
	import pytesseract
	pytesseract.pytesseract.tesseract_cmd = "/usr/local/bin/tesseract"  # macOS/Linux
	# On Windows, something like:
	# pytesseract.pytesseract.tesseract_cmd = r"C:\Program Files\Tesseract-OCR\tesseract.exe"

6. **Run the OCR script:**
	```bash
	python ocr.py

6. **Customize Preprocessing:**

	Adjust parameters (e.g., thresholding, blur, dilation kernel size) in ocr.py to improve OCR accuracy for your specific images.

	Experiment with different preprocessing steps (e.g., adaptive thresholding, CLAHE for contrast enhancement) and tune parameters.

Source:
https://www.geeksforgeeks.org/text-detection-and-extraction-using-opencv-and-ocr/
