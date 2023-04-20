# Use an official Python runtime as a parent image
FROM python:3.8-slim-buster


# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Set the environment variables
ENV FLASK_APP=app.py

# Run the command to start the Flask application
CMD ["flask", "run"]
