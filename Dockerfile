FROM nvcr.io/nvidia/pytorch:23.02-py3

COPY requirements.txt .

RUN --mount=type=cache,target=/home/app/.cache/pip,uid=1000 \
    pip install --cache-dir /home/app/.cache/pip --user --no-deps --progress-bar off -r requirements.txt
