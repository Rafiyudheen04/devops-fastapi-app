# Use official minimal Python image
FROM python:3.12-slim

# Set the working directory
WORKDIR /app

# Copy project files into the container
COPY . .

# Install required packages
RUN pip install --no-cache-dir fastapi "uvicorn[standard]"

# Expose port 8000 for the FastAPI app
EXPOSE 8000

# Run the FastAPI app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
