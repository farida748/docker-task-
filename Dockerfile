FROM python:3.12-slim


WORKDIR /app


COPY . /app


RUN pip install --no-cache-dir -r requirements.txt || echo "No requirements.txt"


CMD ["python3", "app.py"]
git add app.py
git commit -m "Add app.py"
git push origin main
