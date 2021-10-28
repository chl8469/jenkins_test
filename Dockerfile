FROM python:3.8

COPY requirements.txt /usr/src/requirements.txt

RUN pip install --upgrade pip wheel && \
    pip install --no-cache-dir -r /usr/src/requirements.txt && \
    git clone https://github.com/chl8469/jenkins_test.git

WORKDIR /jenkins_test

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--workers", "1"]
