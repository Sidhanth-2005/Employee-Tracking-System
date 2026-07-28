# Base image - lightweight Python
FROM python:3.9-slim

# Working directory inside the container
WORKDIR /app

# Environment variables - keeps container clean and logs visible
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Copy requirements first (Docker caches this layer separately for faster rebuilds)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the backend code
COPY . .

EXPOSE 8000

# 0.0.0.0 required so browser (outside container) can connect
WORKDIR /app/django_react_proj
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]