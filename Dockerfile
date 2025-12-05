FROM python:3.12-slim

# أنشئ مجلد للتطبيق
WORKDIR /app

# انسخ كل ملفات المشروع
COPY . /app

# تثبيت المتطلبات لو فيه requirements.txt
RUN pip install --no-cache-dir -r requirements.txt || echo "No requirements.txt"

# الأمر الافتراضي لتشغيل التطبيق
CMD ["python3", "app.py"]
