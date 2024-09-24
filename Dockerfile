# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 to be accessible from the outside
EXPOSE 5000

# Define environment variable to allow Flask to access it
ENV FLASK_APP=app.py
ENV FLASK_ENV=development

# Command to run the Flask-SocketIO server
CMD ["python", "app.py"]
