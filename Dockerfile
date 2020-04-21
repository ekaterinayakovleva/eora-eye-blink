FROM jjanzic/docker-python3-opencv

RUN apt-get update && \
	apt-get install -y cmake

WORKDIR /app
ADD app/* /app/
ADD requirements.txt /app/

RUN pip install -r /app/requirements.txt
CMD [ "python", "./main.py" ]
