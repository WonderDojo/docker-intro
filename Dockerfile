FROM python:3.6
COPY app /app
RUN pip install requests
CMD python /app/more-real-app.py
