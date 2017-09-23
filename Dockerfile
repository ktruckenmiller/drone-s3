FROM python:2-alpine
RUN pip install boto3
COPY push_up.py /push_up.py
ENTRYPOINT python /push_up.py
