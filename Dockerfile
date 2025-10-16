FROM python:3.12-slim

WORKDIR /app

RUN pip install prefect fastapi --no-cache-dir --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host=files.pythonhosted.org

ENTRYPOINT ["prefect", "server", "start", "--host", "0.0.0.0"]