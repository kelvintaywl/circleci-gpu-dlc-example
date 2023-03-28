# Trying a different base, to see if DLC works
# If so, it may be down to the original nvcr.io/nvidia/pytorch:23.02-py3 image not caching well on CircleCI DLC?
FROM docker.io/cimg/python:3.9

COPY requirements.txt .

RUN --mount=type=cache,target=/home/app/.cache/pip,uid=1000 \
    pip install --cache-dir /home/app/.cache/pip --user --no-deps --progress-bar off -r requirements.txt
