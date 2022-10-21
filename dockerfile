FROM quay.io/devfile/python:slim

# By default, listen on port 8081
EXPOSE 8081/tcp
ENV DJANGO_PORT=8081

# Set the working directory in the container
WORKDIR /projects

# Copy the dependencies file to the working directory
COPY requirements.txt .

# Install any dependencies
RUN pip install -r requirements.txt

# Copy the content of the local src directory to the working directory
COPY . .

# Specify the command to run on container start
CMD [ "py app.py runserver" ]