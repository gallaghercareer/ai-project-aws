FROM public.ecr.aws/lambda/python:3.9

COPY requirements.txt ./

RUN pip3 install -r requirements.txt

RUN yum install -y gzip

RUN yum install -y tar

COPY app.py ./

CMD ["app.lambda_handler"]