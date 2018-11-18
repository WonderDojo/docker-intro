FROM python:3.6
COPY app /app
RUN pip install requests
ENV NAME Nina
WORKDIR /app
CMD python app.py