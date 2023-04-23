# Use the official Python 3.10 Docker image based on Alpine Linux 3.15
FROM python:3.10-alpine3.15

# Set the maintainer of the image
LABEL MAINTAINER "Sakshi Kulkarni <smk8939@nyu.edu>"

# Upgrade pip
RUN pip install --upgrade pip

# Create a non-root user
RUN adduser -D appuser

# Set the user to the newly created non-root user
USER appuser

# Set the working directory to the home directory of the non-root user
WORKDIR /home/appuser

# Add the local user's bin directory to the path
ENV PATH="/home/appuser/.local/bin:${PATH}"

# Copy the requirements.txt file to the working directory
COPY --chown=appuser:appuser requirements.txt requirements.txt

# Install the Python packages specified in requirements.txt
RUN pip install --user -r requirements.txt

# Copy the current directory to the working directory
COPY --chown=appuser:appuser . .

# Set the command to run the Flask app
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]
