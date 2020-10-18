FROM python:3.8
RUN python -m pip install --upgrade pip && pip install pipenv
COPY requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt && mkdir /app
WORKDIR "{{cookicutter.project_slug}}"
COPY app /app/
CMD ["python", "/app/main.py"]

