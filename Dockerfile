FROM python:3.12-slim

WORKDIR /app

RUN pip install --no-cache-dir --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host=files.pythonhosted.org prefect==3.3.5

ENTRYPOINT ["prefect", "server", "start", "--host", "0.0.0.0"]