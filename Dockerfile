FROM teamvaders/hellbot:latest

#clonning repo 
RUN git clone -b suciandini https://github.com/jenovafm/sucifa /root/sucifa
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
#working directory 
WORKDIR /root/sucifa

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

EXPOSE 443 80

CMD ["python3","-m","sucifa"]
