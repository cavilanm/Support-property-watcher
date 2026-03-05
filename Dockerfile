FROM python:3.11-slim
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt || true
CMD ["python", "-m", "http.server", "8080"]
