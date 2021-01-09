FROM swipl:latest

RUN apt update && apt install -y make git
RUN git clone https://github.com/Attempto/APE
RUN cd APE && make install
CMD ["/APE/ape.exe", "-httpserver", "-port", "80"]
EXPOSE 80