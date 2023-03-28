FROM nvcr.io/nvidia/pytorch:23.02-py3

COPY requirements.txt .

# removed dedicated cache, to see if this is the cause for not playing nice with CircleCI DLC implementation
# https://docs.docker.com/build/cache/#use-the-dedicated-run-cache
RUN pip install --user --no-deps --progress-bar off -r requirements.txt
