FROM teamvaders/hellbot:latest

#clonning repo 
RUN git clone https://github.com/jenovafm/sucifa /root/sucifa

#working directory 
WORKDIR /root/sucifa

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","sucifa"]
