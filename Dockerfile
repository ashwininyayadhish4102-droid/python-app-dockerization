
FROM python:3.9-slim
WORKDIR /app
COPY app.py .
RUN useradd -m devopsuser && chown -R devopsuser:devopsuser /app
USER devopsuser
CMD ["python", "app.py"]
