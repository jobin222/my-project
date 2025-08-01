# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8080 for the app
EXPOSE 8080

# Define environment variable
ENV FLASK_APP=app.py

# Run flask
CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]

