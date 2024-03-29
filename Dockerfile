#Our Docker Base Image
FROM python:3.9-slim

WORKDIR /app
#Get the Flask environment ready
RUN python3 -m venv venv
RUN . venv/bin/activate
RUN pip install Flask

COPY . .

CMD ["python3", "app.py"]
