FROM python:3-alpine@sha256:9e9fde4d32eedce0b661d9ab91e826b62dddf28e928c230ec55f1866cac66b01

RUN apk add --update --no-cache git bash
WORKDIR h8mail
RUN pip3 install requests
COPY . .
RUN ["python", "setup.py", "install"]
ENTRYPOINT ["h8mail"]
CMD ["-h"]
