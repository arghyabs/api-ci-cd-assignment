FROM python:3.7

RUN mkdir /calculate/
WORKDIR /calculate/
COPY . /calculate/
RUN pip install -r requirements.txt
EXPOSE 80
CMD ["python", "calculator.py"]
