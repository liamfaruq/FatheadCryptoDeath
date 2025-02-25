FROM python:3.8

# set the working directory in the container
WORKDIR /code

# copy the dependencies file to the working directory
COPY requirements.txt .

# install dependencies
RUN pipx install -r requirements.txt

# copy the content of the local src directory to the working directory
COPY src/ .