FROM python:3.7

RUN mkdir /opt/calculator/
WORKDIR /opt/calculator/
COPY requirements.txt .
COPY dist/calculator /opt/calculator/
EXPOSE 80
CMD ["./calculator" ]
