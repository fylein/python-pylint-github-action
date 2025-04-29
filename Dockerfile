FROM python:3.11-slim

LABEL "com.github.actions.name"="GitHub Action for Python Pylint"
LABEL "com.github.actions.description"="Run pylint commands on python slim image"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="black"

RUN pip install --upgrade pip && pip install -U pip wheel setuptools
RUN pip install pylint

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
