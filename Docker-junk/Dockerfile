# Use an official Python runtime as a parent image
FROM python:3.8-slim-buster


# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 8080

#Set the environment variables
ENV FLASK_APP=app.py

# Run the command to start the Flask application
CMD ["flask", "run", "--port=8080"]
# # We will use python:3.10-alpine as the base image for building the Flask container
# FROM python:3.10-alpine
# # It specifies the working directory where the Docker container will run
# WORKDIR /app
# # Copying all the application files to the working directory
# COPY . .
# # Install all the dependencies required to run the Flask application
# RUN pip install -r requirements.txt
# # Expose the Docker container for the application to run on port 5000
# EXPOSE 8080
# # The command required to run the Dockerized application
# CMD ["python", "/app/app.py"]