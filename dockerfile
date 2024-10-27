# Use the official Python image from the Docker Hub
FROM python:3.9-slim


WORKDIR /app


COPY requirements.txt .


RUN pip install --no-cache-dir -r requirements.txt
RUN pip install pytest
COPY . .
EXPOSE 5000
CMD ["python", "app.py" , "--host=0.0.0.0"]