
FROM python:3
RUN apt-get update

WORKDIR /ML_OPS

COPY ./requirements.txt . 

RUN pip install -r requirements.txt 

ADD model.pickle model.pickle
ADD main.py main.py

CMD ["python", "main.py"]