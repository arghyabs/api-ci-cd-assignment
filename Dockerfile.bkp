FROM python:3.7

RUN mkdir /calculator/
COPY . /calculator/
WORKDIR /calculator/
COPY requirements.txt .

EXPOSE 80
CMD ["python", "/calculator/calculator.py" ]
