# Use official Python image from Docker Hub
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt to the container
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code into the container
COPY . .

# Expose port 8000 for the FastAPI app
EXPOSE 8000

# Command to run the FastAPI app using uvicorn
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
