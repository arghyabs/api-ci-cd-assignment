FROM python:3.7

RUN mkdir /calculate/
WORKDIR /calculate/
COPY . /calculate/
RUN pip install -r requirements.txt
EXPOSE 8080
CMD ["python", "/calculate/calculator.py", "-p 8080"]
