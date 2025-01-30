FROM python:3.12-slim

WORKDIR /app

RUN pip install --no-cache-dir --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host=files.pythonhosted.org prefect

RUN prefect config set PREFECT_API_URL="http://127.0.0.1:4200/api"

ENTRYPOINT ["prefect", "server", "start", "--host", "0.0.0.0"]