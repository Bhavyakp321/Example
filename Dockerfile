FROM python:3.9

WORKDIR /app

COPY exp.py .

RUN pip install requests

RUN apt-get update && apt-get install -y git
 
RUN mkdir /docker_directory

RUN git clone https://github.com/Bhavyakp321/task4.git /docker_directory

CMD ["python", "exp.py"]

