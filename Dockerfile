FROM python:3.9-slim
USER root


WORKDIR /workspace
COPY train.py train.py
COPY requirements.txt requirements.txt

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python3", "train.py"]