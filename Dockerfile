FROM python:3.7

RUN apt update
WORKDIR /calculate
ADD requirements.txt /calculate/requirements.txt
RUN pip install -r requirements.txt
ADD . /calculate
EXPOSE 8080
CMD ["python", "calculator.py", "-p 8080"]
