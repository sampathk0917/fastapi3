FROM python:3.12.0a5-bullseye
RUN apt-get update && apt-get -y upgrade
COPY ./fastapi1.py ~/fastapi2.py
WORKDIR ~/
RUN pip install fastapi uvicorn
EXPOSE 8000
ENTRYPOINT ["uvicorn", "--host", "0.0.0.0", "fastapi2:app"]