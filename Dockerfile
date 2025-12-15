FROM alpine


WORKDIR /app


COPY app.py.


RUN pip install --no-cache-dir -r requirements.txt || echo "No requirements.txt"


CMD ["python3", "app.py"]

