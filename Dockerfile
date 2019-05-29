FROM python:3.7-alpine

LABEL maintainer="Magnus Pernemark <magnus.pernemark@gmail.com>"

WORKDIR /usr/src/app
RUN apk add --no-cache git && \
    git clone https://github.com/dmartinpro/RFLinkGateway.git && \
    apk del git

ENV RFLINK_CONF_FILE="/config/config.json" \
	RFLINK_LOG_LEVEL="INFO" \
	RFLINK_FILE_LOG_LEVEL="INFO" \
	RFLINK_STREAM_LOG_LEVEL="INFO" \
	RFLINK_LOG_FILE="/log/RFLinkGateway.log" 

COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt

CMD [ "python", "RFLinkGateway/RFLinkGateway.py" ]

VOLUME /config /log

