FROM python:3.8
EXPOSE 5000
WORKDIR /app
COPY app.py .
RUN pip install Flask
ENV FLASK_APP=app.py
CMD ["flask", "run", "--host=0.0.0.0"]
