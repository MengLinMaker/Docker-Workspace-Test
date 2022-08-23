# Pull from docker hub with python pre-installed
FROM python:3.9

# Make a docker container work directory called 'code'
WORKDIR /code



### INSTALLATION SCRIPTS ###

# Copy 'script' folder to docker container
COPY ./script /code/script

# install workspace
RUN apt-get update
RUN apt-get install /code/script/workspace.deb

# Install python packages
RUN pip install git+https://github.com/csiro-workspace/workspace-python.git
RUN pip install --no-cache-dir --upgrade -r /code/script/requirements.txt 



### APPLICATION ###

# Copy 'app' folder to docker container
COPY ./app /code/app

# Run CLI commands
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]


