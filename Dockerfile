FROM python:3.8
WORKDIR /app
COPY . /app
RUN pip install -r requirments.txt
EXPOSE 5000
CMD python ./app.py 