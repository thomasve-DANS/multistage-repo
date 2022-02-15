FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /code
RUN pip install poetry
COPY poetry.lock /code/
COPY pyproject.toml /code/
RUN poetry install
COPY . /code/